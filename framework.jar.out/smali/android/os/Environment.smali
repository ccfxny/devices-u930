.class public Landroid/os/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# static fields
.field private static final DATA_DIRECTORY:Ljava/io/File; = null

.field public static DIRECTORY_ALARMS:Ljava/lang/String; = null

.field public static DIRECTORY_DCIM:Ljava/lang/String; = null

.field public static DIRECTORY_DOWNLOADS:Ljava/lang/String; = null

.field public static DIRECTORY_MOVIES:Ljava/lang/String; = null

.field public static DIRECTORY_MUSIC:Ljava/lang/String; = null

.field public static DIRECTORY_NOTIFICATIONS:Ljava/lang/String; = null

.field public static DIRECTORY_PICTURES:Ljava/lang/String; = null

.field public static DIRECTORY_PODCASTS:Ljava/lang/String; = null

.field public static DIRECTORY_RINGTONES:Ljava/lang/String; = null

.field public static DIRECTORY_SCREEN_CAPTURE:Ljava/lang/String; = null

.field private static final DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_ANDROID_OBB_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File; = null

.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "shared"

.field private static final MEDIA_STORAGE_DIRECTORY:Ljava/io/File; = null

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field private static final ROOT_DIRECTORY:Ljava/io/File; = null

.field private static final SECURE_DATA_DIRECTORY:Ljava/io/File; = null

.field public static final STORAGE_FLASH:I = 0x1

.field public static final STORAGE_TCARD:I = 0x2

.field public static final STORAGE_USB:I = 0x3

.field private static final SYSTEM_PROPERTY_EFS_ENABLED:Ljava/lang/String; = "persist.security.efs.enabled"

.field private static final TAG:Ljava/lang/String; = "Environment"

.field private static final TF_STORAGE_DIRECTORY:Ljava/io/File;

.field private static final USB_STORAGE_DIRECTORY:Ljava/io/File;

.field private static final mLock:Ljava/lang/Object;

.field private static volatile mPrimaryVolume:Landroid/os/storage/StorageVolume;

.field private static final SECONDARY_EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File; = null

.field private static volatile mSecondaryVolume:Landroid/os/storage/StorageVolume;

# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    const-string v0, "ANDROID_ROOT"

    const-string v1, "/system"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->ROOT_DIRECTORY:Ljava/io/File;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Environment;->mLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Environment;->mPrimaryVolume:Landroid/os/storage/StorageVolume;
    
    sput-object v0, Landroid/os/Environment;->mSecondaryVolume:Landroid/os/storage/StorageVolume;

    .line 116
    const-string v0, "ANDROID_DATA"

    const-string v1, "/data"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    .line 122
    const-string v0, "ANDROID_SECURE_DATA"

    const-string v1, "/data/secure"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 126
    const-string v0, "MEDIA_STORAGE"

    const-string v1, "/data/media"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->MEDIA_STORAGE_DIRECTORY:Ljava/io/File;

    .line 129
    const-string v0, "EXTERNAL_STORAGE"

    const-string v1, "/mnt/sdcard"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 132
    const-string v0, "TF_STORAGE"

    const-string v1, "/mnt/sdcard-ext"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->TF_STORAGE_DIRECTORY:Ljava/io/File;
    
    const-string v0, "SECONDARY_STORAGE"

    const-string v1, "/mnt/sdcard-ext"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->SECONDARY_EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 134
    const-string v0, "USB_STORAGE"

    const-string v1, "/mnt/usbdrive"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->USB_STORAGE_DIRECTORY:Ljava/io/File;

    .line 136
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE"

    const-string v3, "/mnt/sdcard"

    invoke-static {v2, v3}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    .line 140
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE"

    const-string v3, "/mnt/sdcard"

    invoke-static {v2, v3}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    .line 144
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE"

    const-string v3, "/mnt/sdcard"

    invoke-static {v2, v3}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "obb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_OBB_DIRECTORY:Ljava/io/File;

    .line 148
    const-string v0, "DOWNLOAD_CACHE"

    const-string v1, "/cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    .line 251
    const-string v0, "Music"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 263
    const-string v0, "Podcasts"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    .line 275
    const-string v0, "Ringtones"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .line 287
    const-string v0, "Alarms"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    .line 299
    const-string v0, "Notifications"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    .line 307
    const-string v0, "Pictures"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 315
    const-string v0, "ScreenCapture"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_SCREEN_CAPTURE:Ljava/lang/String;

    .line 323
    const-string v0, "Movies"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 333
    const-string v0, "Download"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 340
    const-string v0, "DCIM"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method static getDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "variableName"

    .prologue
    .line 577
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "variableName"
    .parameter "defaultPath"

    .prologue
    .line 585
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDownloadCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 436
    sget-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStorageAndroidDataDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 387
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 428
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 395
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 419
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 403
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 411
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_OBB_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Landroid/os/Environment;->isSdcardOnePrimary()Z
    move-result v0
    if-eqz v0, :cond_0
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    :goto_0
    return-object v0
    :cond_0
    sget-object v0, Landroid/os/Environment;->SECONDARY_EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;
    goto :goto_0
.end method

.method public static getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "type"

    .prologue
    .line 367
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 500
    :try_start_0
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 502
    .local v0, mountService:Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 505
    :goto_0
    return-object v2

    .line 504
    :catch_0
    move-exception v1

    .line 505
    .local v1, rex:Ljava/lang/Exception;
    const-string/jumbo v2, "removed"

    goto :goto_0
.end method

.method public static getMediaStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Landroid/os/Environment;->MEDIA_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getOtgStorageState()I
    .locals 4

    .prologue
    .line 544
    :try_start_0
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 546
    .local v0, mountService:Landroid/os/storage/IMountService;
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getOtgVolumeState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 549
    :goto_0
    return v2

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, rex:Ljava/lang/Exception;
    const-string v2, "Environment"

    const-string/jumbo v3, "the getOtgStorageState is error!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getStorageDirectoryByType(I)Ljava/io/File;
    .locals 2
    .parameter "type"

    .prologue
    .line 198
    const-string/jumbo v1, "zte.is.phone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 199
    .local v0, ZTE_IS_PHONE:I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 200
    packed-switch p0, :pswitch_data_0

    .line 208
    sget-object v1, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 219
    :goto_0
    return-object v1

    .line 202
    :pswitch_0
    sget-object v1, Landroid/os/Environment;->TF_STORAGE_DIRECTORY:Ljava/io/File;

    goto :goto_0

    .line 204
    :pswitch_1
    sget-object v1, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    goto :goto_0

    .line 206
    :pswitch_2
    sget-object v1, Landroid/os/Environment;->USB_STORAGE_DIRECTORY:Ljava/io/File;

    goto :goto_0

    .line 211
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 219
    sget-object v1, Landroid/os/Environment;->TF_STORAGE_DIRECTORY:Ljava/io/File;

    goto :goto_0

    .line 213
    :pswitch_3
    sget-object v1, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    goto :goto_0

    .line 215
    :pswitch_4
    sget-object v1, Landroid/os/Environment;->TF_STORAGE_DIRECTORY:Ljava/io/File;

    goto :goto_0

    .line 217
    :pswitch_5
    sget-object v1, Landroid/os/Environment;->USB_STORAGE_DIRECTORY:Ljava/io/File;

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 211
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getStoragePublicDirectoryByType(Ljava/lang/String;I)Ljava/io/File;
    .locals 2
    .parameter "filename"
    .parameter "type"

    .prologue
    .line 371
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getStorageDirectoryByType(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStorageStateByType(I)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 512
    :try_start_0
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 514
    .local v0, mountService:Landroid/os/storage/IMountService;
    invoke-static {p0}, Landroid/os/Environment;->getStorageDirectoryByType(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 517
    .end local v0           #mountService:Landroid/os/storage/IMountService;
    :goto_0
    return-object v2

    .line 516
    :catch_0
    move-exception v1

    .line 517
    .local v1, rex:Ljava/lang/Exception;
    const-string/jumbo v2, "removed"

    goto :goto_0
.end method

.method public static getPhoneMemoryDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 530
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecondaryExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPhoneMemoryState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecondaryExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


.method public static getTFStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Landroid/os/Environment;->TF_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method private static getPrimaryVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Environment;->getVolume(I)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public static getTFStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "type"

    .prologue
    .line 375
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getTFStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTFStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 522
    :try_start_0
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 524
    .local v0, mountService:Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Environment;->getTFStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 527
    :goto_0
    return-object v2

    .line 526
    :catch_0
    move-exception v1

    .line 527
    .local v1, rex:Ljava/lang/Exception;
    const-string/jumbo v2, "removed"

    goto :goto_0
.end method

.method public static getRootDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Landroid/os/Environment;->ROOT_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getUSBStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Landroid/os/Environment;->USB_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getSDCardDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 515
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecondaryExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUSBStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "type"

    .prologue
    .line 380
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getUSBStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUSBStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 533
    :try_start_0
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 535
    .local v0, mountService:Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Environment;->getUSBStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 538
    :goto_0
    return-object v2

    .line 537
    :catch_0
    move-exception v1

    .line 538
    .local v1, rex:Ljava/lang/Exception;
    const-string/jumbo v2, "removed"

    goto :goto_0
.end method

.method public static getSDCardState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecondaryExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSecondaryExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Landroid/os/Environment;->isSdcardOnePrimary()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->SECONDARY_EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getSecondaryExternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 488
    :try_start_0
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 490
    .local v0, mountService:Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Environment;->getSecondaryExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 493
    :goto_0
    return-object v2

    .line 492
    :catch_0
    move-exception v1

    .line 493
    .local v1, rex:Ljava/lang/Exception;
    const-string/jumbo v2, "removed"

    goto :goto_0
.end method

.method private static getSecondaryVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->getVolume(I)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method
.method public static getSecureDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 112
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getSystemSecureDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getVolume(I)Landroid/os/storage/StorageVolume;
    .locals 6
    .parameter "volume"

    .prologue
    const/4 v5, 0x1

    .line 44
    sget-object v3, Landroid/os/Environment;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_1

    .line 45
    sget-object v4, Landroid/os/Environment;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 46
    :try_start_0
    sget-object v3, Landroid/os/Environment;->mPrimaryVolume:Landroid/os/storage/StorageVolume;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 48
    :try_start_1
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 50
    .local v1, mountService:Landroid/os/storage/IMountService;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/Parcelable;

    move-result-object v2

    .line 51
    .local v2, volumes:[Landroid/os/Parcelable;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    sput-object v3, Landroid/os/Environment;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    .line 52
    array-length v3, v2

    if-le v3, v5, :cond_0

    .line 53
    const/4 v3, 0x1

    aget-object v3, v2, v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    sput-object v3, Landroid/os/Environment;->mSecondaryVolume:Landroid/os/storage/StorageVolume;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    .end local v2           #volumes:[Landroid/os/Parcelable;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 67
    sget-object v3, Landroid/os/Environment;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    :goto_1
    return-object v3

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "Environment"

    const-string v5, "couldn\'t talk to MountService"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 59
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 63
    :pswitch_0
    sget-object v3, Landroid/os/Environment;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    goto :goto_1

    .line 65
    :pswitch_1
    sget-object v3, Landroid/os/Environment;->mSecondaryVolume:Landroid/os/storage/StorageVolume;

    goto :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isEncryptedFilesystemEnabled()Z
    .locals 2

    .prologue
    .line 133
    const-string/jumbo v0, "persist.security.efs.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
.method public static isExternalStorageEmulated()Z
    .locals 2

    .prologue
    .line 555
    invoke-static {}, Landroid/os/Environment;->isSdcardOnePrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 556
    .local v0, volume:Landroid/os/storage/StorageVolume;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 555
    .end local v0           #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecondaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    goto :goto_0

    .line 556
    .restart local v0       #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
.method public static isExternalStorageRemovable()Z
    .locals 2

    .prologue
    .line 506
    invoke-static {}, Landroid/os/Environment;->isSdcardOnePrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 507
    .local v0, volume:Landroid/os/storage/StorageVolume;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 506
    .end local v0           #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecondaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    goto :goto_0

    .line 507
    .restart local v0       #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
.method private static isSdcardOnePrimary()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 582
    sget-object v2, Landroid/os/Environment;->SECONDARY_EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    if-nez v2, :cond_1

    .line 592
    .local v0, value:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 584
    .end local v0           #value:Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "persist.sys.baidu.default_write"

    const-string v3, "first_storage"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .restart local v0       #value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 586
    const-string v2, "first_storage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 589
    const/4 v1, 0x0

    goto :goto_0
.end method
.method public static isSecondaryExternalStorageEmulated()Z
    .locals 2

    .prologue
    .line 564
    invoke-static {}, Landroid/os/Environment;->isSdcardOnePrimary()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 565
    .local v0, volume:Landroid/os/storage/StorageVolume;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 564
    .end local v0           #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecondaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    goto :goto_0

    .line 565
    .restart local v0       #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method