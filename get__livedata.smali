.class public Lo/getGetListVouchersLiveData;
.super Ljava/lang/Object;

.field private final static RemoteActionCompatParcelizer:[C

.field private static write:J

.method static constructor <clinit>()V
  .registers 2
    const/16 v0, 16
    new-array v0, v0, [C
    fill-array-data v0, :L0
    sput-object v0, Lo/getGetListVouchersLiveData;->RemoteActionCompatParcelizer:[C
    const-wide/16 v0, -1
    sput-wide v0, Lo/getGetListVouchersLiveData;->write:J
    return-void
  :L0
  .array-data 2
    48t 0t
    49t 0t
    50t 0t
    51t 0t
    52t 0t
    53t 0t
    54t 0t
    55t 0t
    56t 0t
    57t 0t
    97t 0t
    98t 0t
    99t 0t
    100t 0t
    101t 0t
    102t 0t
  .end array-data
.end method

.method public constructor <init>()V
  .registers 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static IconCompatParcelizer(Ljava/lang/String;)J
  .registers 7
    new-instance v0, Landroid/os/StatFs;
    invoke-direct { v0, p0 }, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0 }, Landroid/os/StatFs;->getBlockSize()I
    move-result v1
    int-to-long v2, v1
    invoke-virtual { v0 }, Landroid/os/StatFs;->getBlockCount()I
    move-result v1
    int-to-long v4, v1
    mul-long/2addr v4, v2
    invoke-virtual { v0 }, Landroid/os/StatFs;->getAvailableBlocks()I
    move-result v0
    int-to-long v0, v0
    mul-long/2addr v0, v2
    sub-long v0, v4, v0
    return-wide v0
.end method

.method public static IconCompatParcelizer(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;
  .registers 5
    const-string v0, "activity"
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/app/ActivityManager;
    invoke-virtual { v0 }, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
    move-result-object v0
    if-eqz v0, :L2
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    invoke-virtual { v2, p0 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L0
  :L1
    return-object v0
  :L2
    const/4 v0, 0
    goto :L1
.end method

.method public static IconCompatParcelizer(Landroid/content/Context;)Ljava/lang/String;
  .registers 5
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const-string v1, "com.google.firebase.crashlytics.mapping_file_id"
    const-string v2, "string"
    invoke-static { p0 }, Lo/getGetListVouchersLiveData;->MediaBrowserCompat$SearchResultReceiver(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v1, v2, v3 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    if-nez v0, :L0
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const-string v1, "com.crashlytics.android.build_id"
    const-string v2, "string"
    invoke-static { p0 }, Lo/getGetListVouchersLiveData;->MediaBrowserCompat$SearchResultReceiver(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v1, v2, v3 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
  :L0
    if-eqz v0, :L2
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
  :L1
    return-object v0
  :L2
    const/4 v0, 0
    goto :L1
.end method

.method public static MediaBrowserCompat$CustomActionResultReceiver()J
  .catchall { :L0 .. :L1 } :L15
  .catch Ljava/lang/NumberFormatException; { :L2 .. :L3 } :L12
  .catchall { :L2 .. :L3 } :L15
  .catchall { :L4 .. :L6 } :L15
  .catch Ljava/lang/NumberFormatException; { :L7 .. :L11 } :L12
  .catchall { :L7 .. :L11 } :L15
  .catchall { :L13 .. :L14 } :L15
  .registers 4
    const-class v0, Lo/getGetListVouchersLiveData;
    monitor-enter v0
  :L0
    sget-wide v0, Lo/getGetListVouchersLiveData;->write:J
    const-wide/16 v2, -1
    cmp-long v0, v0, v2
    if-nez v0, :L5
    new-instance v0, Ljava/io/File;
    const-string v1, "/proc/meminfo"
    invoke-direct { v0, v1 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    const-string v1, "MemTotal"
    invoke-static { v0, v1 }, Lo/getGetListVouchersLiveData;->write(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    const-wide/16 v0, 0
    if-nez v3, :L4
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual { v2, v3 }, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
  :L1
    move-result-object v2
  :L2
    const-string v3, "KB"
    invoke-virtual { v2, v3 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L7
    const-string v3, "KB"
    invoke-virtual { v2, v3 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v2
    const/4 v3, 0
    aget-object v2, v2, v3
    invoke-virtual { v2 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
  :L3
    move-result-wide v0
    const/16 v2, 10
    shl-long/2addr v0, v2
  :L4
    sput-wide v0, Lo/getGetListVouchersLiveData;->write:J
  :L5
    sget-wide v0, Lo/getGetListVouchersLiveData;->write:J
  :L6
    const-class v2, Lo/getGetListVouchersLiveData;
    monitor-exit v2
    return-wide v0
  :L7
    const-string v3, "MB"
    invoke-virtual { v2, v3 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L9
    const-string v3, "MB"
    invoke-virtual { v2, v3 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v2
    const/4 v3, 0
    aget-object v2, v2, v3
    invoke-virtual { v2 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v0
    const-wide/32 v2, 1048576
  :L8
    mul-long/2addr v0, v2
    goto :L4
  :L9
    const-string v3, "GB"
    invoke-virtual { v2, v3 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L10
    const-string v3, "GB"
    invoke-virtual { v2, v3 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v2
    const/4 v3, 0
    aget-object v2, v2, v3
    invoke-virtual { v2 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v0
    const-wide/32 v2, 1073741824
    goto :L8
  :L10
    invoke-static { }, Lo/VtLoadWebViewModel;->read()Lo/VtLoadWebViewModel;
    move-result-object v2
    const/4 v3, 5
    invoke-virtual { v2, v3 }, Lo/VtLoadWebViewModel;->IconCompatParcelizer(I)Z
  :L11
    goto :L4
  :L12
    move-exception v2
  :L13
    invoke-static { }, Lo/VtLoadWebViewModel;->read()Lo/VtLoadWebViewModel;
    move-result-object v2
    const/4 v3, 6
    invoke-virtual { v2, v3 }, Lo/VtLoadWebViewModel;->IconCompatParcelizer(I)Z
  :L14
    goto :L4
  :L15
    move-exception v0
    const-class v1, Lo/getGetListVouchersLiveData;
    monitor-exit v1
    throw v0
.end method

.method public static MediaBrowserCompat$CustomActionResultReceiver(Ljava/io/Closeable;)V
  .catch Ljava/lang/RuntimeException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .registers 2
    if-eqz p0, :L1
  :L0
    invoke-interface { p0 }, Ljava/io/Closeable;->close()V
  :L1
    return-void
  :L2
    move-exception v0
    throw v0
  :L3
    move-exception v0
    goto :L1
.end method

.method public static MediaBrowserCompat$CustomActionResultReceiver(Landroid/content/Context;)Z
  .registers 3
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"
    invoke-static { p0, v0 }, Lo/getGetListVouchersLiveData;->write(Landroid/content/Context;Ljava/lang/String;)Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L2
    const-string v0, "connectivity"
    invoke-virtual { p0, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/net/ConnectivityManager;
    invoke-virtual { v0 }, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    move-result-object v0
    if-eqz v0, :L1
    invoke-virtual { v0 }, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    move-result v0
    if-eqz v0, :L1
    move v0, v1
  :L0
    return v0
  :L1
    const/4 v0, 0
    goto :L0
  :L2
    move v0, v1
    goto :L0
.end method

.method public static MediaBrowserCompat$CustomActionResultReceiver(Landroid/content/Context;Ljava/lang/String;)Z
  .registers 6
    if-eqz p0, :L2
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    if-eqz v0, :L2
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const-string v2, "bool"
    invoke-static { p0 }, Lo/getGetListVouchersLiveData;->MediaBrowserCompat$SearchResultReceiver(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v1, p1, v2, v3 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    if-lez v1, :L1
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
  :L0
    return v0
  :L1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const-string v1, "string"
    invoke-static { p0 }, Lo/getGetListVouchersLiveData;->MediaBrowserCompat$SearchResultReceiver(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, p1, v1, v2 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    if-lez v0, :L2
    invoke-virtual { p0, v0 }, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    move-result v0
    goto :L0
  :L2
    const/4 v0, 1
    goto :L0
.end method

.method public static MediaBrowserCompat$ItemReceiver(Landroid/content/Context;)Landroid/content/SharedPreferences;
  .registers 3
    const-string v0, "com.google.firebase.crashlytics"
    const/4 v1, 0
    invoke-virtual { p0, v0, v1 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    return-object v0
.end method

.method public static MediaBrowserCompat$MediaItem(Landroid/content/Context;)Z
  .registers 4
    invoke-virtual { p0 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v0
    const-string v1, "android_id"
    invoke-static { v0, v1 }, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
    const-string v2, "sdk"
    invoke-virtual { v1, v2 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L1
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    const-string v2, "goldfish"
    invoke-virtual { v1, v2 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L1
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    const-string v2, "ranchu"
    invoke-virtual { v1, v2 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L1
    if-eqz v0, :L1
    const/4 v0, 0
  :L0
    return v0
  :L1
    const/4 v0, 1
    goto :L0
.end method

.method private static MediaBrowserCompat$SearchResultReceiver(Landroid/content/Context;)Ljava/lang/String;
  .catch Landroid/content/res/Resources$NotFoundException; { :L0 .. :L1 } :L3
  .registers 3
    invoke-virtual { p0 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    move-result-object v0
    iget v0, v0, Landroid/content/pm/PackageItemInfo;->icon:I
    if-lez v0, :L4
  :L0
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;
    move-result-object v0
    const-string v1, "android"
    invoke-virtual { v1, v0 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L2
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
  :L1
    move-result-object v0
  :L2
    return-object v0
  :L3
    move-exception v0
  :L4
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v0
    goto :L2
.end method

.method public static MediaDescriptionCompat(Landroid/content/Context;)Ljava/lang/String;
  .registers 5
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const-string v1, "com.google.firebase.crashlytics.unity_version"
    const-string v2, "string"
    invoke-static { p0 }, Lo/getGetListVouchersLiveData;->MediaBrowserCompat$SearchResultReceiver(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v1, v2, v3 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    if-eqz v0, :L1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    invoke-static { }, Lo/VtLoadWebViewModel;->read()Lo/VtLoadWebViewModel;
    move-result-object v1
    const/4 v2, 2
    invoke-virtual { v1, v2 }, Lo/VtLoadWebViewModel;->IconCompatParcelizer(I)Z
  :L0
    return-object v0
  :L1
    const/4 v0, 0
    goto :L0
.end method

.method public static MediaMetadataCompat(Landroid/content/Context;)Z
  .registers 5
    const/4 v0, 1
    invoke-static { p0 }, Lo/getGetListVouchersLiveData;->MediaBrowserCompat$MediaItem(Landroid/content/Context;)Z
    move-result v1
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;
    if-nez v1, :L1
    if-eqz v2, :L1
    const-string v3, "test-keys"
    invoke-virtual { v2, v3 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :L1
  :L0
    return v0
  :L1
    new-instance v2, Ljava/io/File;
    const-string v3, "/system/app/Superuser.apk"
    invoke-direct { v2, v3 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual { v2 }, Ljava/io/File;->exists()Z
    move-result v2
    if-nez v2, :L0
    new-instance v2, Ljava/io/File;
    const-string v3, "/system/xbin/su"
    invoke-direct { v2, v3 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    if-nez v1, :L2
    invoke-virtual { v2 }, Ljava/io/File;->exists()Z
    move-result v1
    if-nez v1, :L0
  :L2
    const/4 v0, 0
    goto :L0
.end method

.method private static RemoteActionCompatParcelizer([BLjava/lang/String;)Ljava/lang/String;
  .catch Ljava/security/NoSuchAlgorithmException; { :L0 .. :L1 } :L3
  .registers 4
  :L0
    invoke-static { p1 }, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
  :L1
    move-result-object v0
    invoke-virtual { v0, p0 }, Ljava/security/MessageDigest;->update([B)V
    invoke-virtual { v0 }, Ljava/security/MessageDigest;->digest()[B
    move-result-object v0
    invoke-static { v0 }, Lo/getGetListVouchersLiveData;->write([B)Ljava/lang/String;
    move-result-object v0
  :L2
    return-object v0
  :L3
    move-exception v0
    invoke-static { }, Lo/VtLoadWebViewModel;->read()Lo/VtLoadWebViewModel;
    move-result-object v0
    const/4 v1, 6
    invoke-virtual { v0, v1 }, Lo/VtLoadWebViewModel;->IconCompatParcelizer(I)Z
    const-string v0, ""
    goto :L2
.end method

.method public static varargs RemoteActionCompatParcelizer([Ljava/lang/String;)Ljava/lang/String;
  .registers 6
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
    const/4 v0, 0
  :L0
    const/4 v2, 4
    if-ge v0, v2, :L2
    aget-object v2, p0, v0
    if-eqz v2, :L1
    const-string v3, "-"
    const-string v4, ""
    invoke-virtual { v2, v3, v4 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual { v2, v3 }, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v2
    invoke-interface { v1, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    invoke-static { v1 }, Ljava/util/Collections;->sort(Ljava/util/List;)V
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-interface { v1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L3
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L4
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L3
  :L4
    invoke-virtual { v2 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v1
    if-lez v1, :L6
    invoke-virtual { v0 }, Ljava/lang/String;->getBytes()[B
    move-result-object v0
    const-string v1, "SHA-1"
    invoke-static { v0, v1 }, Lo/getGetListVouchersLiveData;->RemoteActionCompatParcelizer([BLjava/lang/String;)Ljava/lang/String;
    move-result-object v0
  :L5
    return-object v0
  :L6
    const/4 v0, 0
    goto :L5
.end method

.method public static RemoteActionCompatParcelizer(Ljava/io/Closeable;Ljava/lang/String;)V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 4
    if-eqz p0, :L1
  :L0
    invoke-interface { p0 }, Ljava/io/Closeable;->close()V
  :L1
    return-void
  :L2
    move-exception v0
    invoke-static { }, Lo/VtLoadWebViewModel;->read()Lo/VtLoadWebViewModel;
    move-result-object v0
    const/4 v1, 6
    invoke-virtual { v0, v1 }, Lo/VtLoadWebViewModel;->IconCompatParcelizer(I)Z
    goto :L1
.end method

.method private static RemoteActionCompatParcelizer()Z
  .registers 1
    invoke-static { }, Landroid/os/Debug;->isDebuggerConnected()Z
    move-result v0
    if-nez v0, :L1
    invoke-static { }, Landroid/os/Debug;->waitingForDebugger()Z
    move-result v0
    if-nez v0, :L1
    const/4 v0, 0
  :L0
    return v0
  :L1
    const/4 v0, 1
    goto :L0
.end method

.method public static RemoteActionCompatParcelizer(Landroid/content/Context;)Z
  .registers 4
    const/4 v1, 0
    invoke-static { p0 }, Lo/getGetListVouchersLiveData;->MediaBrowserCompat$MediaItem(Landroid/content/Context;)Z
    move-result v0
    if-eqz v0, :L1
  :L0
    return v1
  :L1
    const-string v0, "sensor"
    invoke-virtual { p0, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/hardware/SensorManager;
    const/16 v2, 8
    invoke-virtual { v0, v2 }, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;
    move-result-object v0
    if-eqz v0, :L3
    const/4 v0, 1
  :L2
    move v1, v0
    goto :L0
  :L3
    move v0, v1
    goto :L2
.end method

.method public static read()I
  .registers 1
    invoke-static { }, Lo/getGetListVouchersLiveData$MediaBrowserCompat$CustomActionResultReceiver;->getValue()Lo/getGetListVouchersLiveData$MediaBrowserCompat$CustomActionResultReceiver;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Enum;->ordinal()I
    move-result v0
    return v0
.end method

.method public static read(Landroid/content/Context;)J
  .registers 3
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;
    invoke-direct { v1 }, Landroid/app/ActivityManager$MemoryInfo;-><init>()V
    const-string v0, "activity"
    invoke-virtual { p0, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/app/ActivityManager;
    invoke-virtual { v0, v1 }, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    return-wide v0
.end method

.method public static read(Ljava/io/InputStream;)Ljava/lang/String;
  .registers 3
    new-instance v0, Ljava/util/Scanner;
    invoke-direct { v0, p0 }, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    const-string v1, "\\A"
    invoke-virtual { v0, v1 }, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/Scanner;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-virtual { v0 }, Ljava/util/Scanner;->next()Ljava/lang/String;
    move-result-object v0
  :L0
    return-object v0
  :L1
    const-string v0, ""
    goto :L0
.end method

.method public static write(Landroid/content/Context;)I
  .registers 3
    invoke-static { p0 }, Lo/getGetListVouchersLiveData;->MediaBrowserCompat$MediaItem(Landroid/content/Context;)Z
    move-result v0
    invoke-static { p0 }, Lo/getGetListVouchersLiveData;->MediaMetadataCompat(Landroid/content/Context;)Z
    move-result v1
    if-eqz v1, :L0
    or-int/lit8 v0, v0, 2
  :L0
    invoke-static { }, Lo/getGetListVouchersLiveData;->RemoteActionCompatParcelizer()Z
    move-result v1
    if-eqz v1, :L1
    or-int/lit8 v0, v0, 4
  :L1
    return v0
.end method

.method private static write(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L10
  .catchall { :L0 .. :L1 } :L6
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L16
  .catchall { :L1 .. :L2 } :L13
  .catch Ljava/io/IOException; { :L4 .. :L5 } :L14
  .catch Ljava/io/IOException; { :L8 .. :L9 } :L15
  .catchall { :L11 .. :L12 } :L13
  .registers 9
    const/4 v6, 1
    const/4 v5, 6
    const/4 v0, 0
    invoke-virtual { p0 }, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :L5
  :L0
    new-instance v1, Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/FileReader;
    invoke-direct { v2, p0 }, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    const/16 v3, 1024
    invoke-direct { v1, v2, v3 }, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
  :L1
    invoke-virtual { v1 }, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :L3
    const-string v3, "\\s*:\\s*"
    invoke-static { v3 }, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    move-result-object v3
    const/4 v4, 2
    invoke-virtual { v3, v2, v4 }, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;
    move-result-object v2
    array-length v3, v2
    if-le v3, v6, :L1
    const/4 v3, 0
    aget-object v3, v2, v3
    invoke-virtual { v3, p1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
  :L2
    move-result v3
    if-eqz v3, :L1
    aget-object v0, v2, v6
  :L3
    if-eqz v1, :L5
  :L4
    invoke-interface { v1 }, Ljava/io/Closeable;->close()V
  :L5
    return-object v0
  :L6
    move-exception v1
    move-object v2, v0
    move-object v3, v1
  :L7
    if-eqz v2, :L9
  :L8
    invoke-interface { v2 }, Ljava/io/Closeable;->close()V
  :L9
    throw v3
  :L10
    move-exception v1
    move-object v1, v0
  :L11
    invoke-static { }, Lo/VtLoadWebViewModel;->read()Lo/VtLoadWebViewModel;
    move-result-object v2
    const/4 v3, 6
    invoke-virtual { v2, v3 }, Lo/VtLoadWebViewModel;->IconCompatParcelizer(I)Z
  :L12
    goto :L3
  :L13
    move-exception v0
    move-object v2, v1
    move-object v3, v0
    goto :L7
  :L14
    move-exception v1
    invoke-static { }, Lo/VtLoadWebViewModel;->read()Lo/VtLoadWebViewModel;
    move-result-object v1
    invoke-virtual { v1, v5 }, Lo/VtLoadWebViewModel;->IconCompatParcelizer(I)Z
    goto :L5
  :L15
    move-exception v0
    invoke-static { }, Lo/VtLoadWebViewModel;->read()Lo/VtLoadWebViewModel;
    move-result-object v0
    invoke-virtual { v0, v5 }, Lo/VtLoadWebViewModel;->IconCompatParcelizer(I)Z
    goto :L9
  :L16
    move-exception v2
    goto :L11
.end method

.method public static write(Ljava/lang/String;)Ljava/lang/String;
  .registers 3
    invoke-virtual { p0 }, Ljava/lang/String;->getBytes()[B
    move-result-object v0
    const-string v1, "SHA-1"
    invoke-static { v0, v1 }, Lo/getGetListVouchersLiveData;->RemoteActionCompatParcelizer([BLjava/lang/String;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public static write([B)Ljava/lang/String;
  .registers 7
    array-length v0, p0
    shl-int/lit8 v0, v0, 1
    new-array v1, v0, [C
    const/4 v0, 0
  :L0
    array-length v2, p0
    if-ge v0, v2, :L1
    aget-byte v2, p0, v0
    and-int/lit16 v2, v2, 255
    shl-int/lit8 v3, v0, 1
    sget-object v4, Lo/getGetListVouchersLiveData;->RemoteActionCompatParcelizer:[C
    ushr-int/lit8 v5, v2, 4
    aget-char v5, v4, v5
    aput-char v5, v1, v3
    add-int/lit8 v3, v3, 1
    and-int/lit8 v2, v2, 15
    aget-char v2, v4, v2
    aput-char v2, v1, v3
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    new-instance v0, Ljava/lang/String;
    invoke-direct { v0, v1 }, Ljava/lang/String;-><init>([C)V
    return-object v0
.end method

.method private static write(Landroid/content/Context;Ljava/lang/String;)Z
  .registers 3
    invoke-virtual { p0, p1 }, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    move-result v0
    if-nez v0, :L1
    const/4 v0, 1
  :L0
    return v0
  :L1
    const/4 v0, 0
    goto :L0
.end method

