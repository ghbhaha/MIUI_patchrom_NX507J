.class final Landroid/app/ApplicationPackageManager;
.super Landroid/content/pm/PackageManager;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationPackageManager$ResourceName;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ICONS:Z = false

.field private static final TAG:Ljava/lang/String; = "ApplicationPackageManager"

.field private static sIconCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sStringCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field mCachedSafeMode:I

.field private final mContext:Landroid/app/ContextImpl;

.field private final mPM:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1378
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    .line 1379
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    .line 1381
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    return-void
.end method

.method constructor <init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V
    .locals 1
    .parameter "context"
    .parameter "pm"

    .prologue
    .line 843
    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    .line 823
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    .line 844
    iput-object p1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 845
    iput-object p2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 846
    return-void
.end method

.method static configurationChanged()V
    .locals 2

    .prologue
    .line 836
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 837
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 838
    sget-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 839
    monitor-exit v1

    .line 840
    return-void

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "name"

    .prologue
    .line 852
    sget-object v3, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v3

    .line 853
    :try_start_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 856
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_1

    .line 857
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 858
    .local v0, state:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v3

    .line 874
    .end local v0           #state:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v2

    .line 871
    .restart local v0       #state:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    .end local v0           #state:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    monitor-exit v3

    .line 874
    const/4 v2, 0x0

    goto :goto_0

    .line 873
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCachedString(Landroid/app/ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "name"

    .prologue
    .line 977
    sget-object v3, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v3

    .line 978
    :try_start_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 979
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_1

    .line 980
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 981
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 982
    monitor-exit v3

    .line 988
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 985
    .restart local v0       #cs:Ljava/lang/CharSequence;
    :cond_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_1
    monitor-exit v3

    .line 988
    const/4 v0, 0x0

    goto :goto_0

    .line 987
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static handlePackageBroadcast(I[Ljava/lang/String;Z)V
    .locals 10
    .parameter "cmd"
    .parameter "pkgList"
    .parameter "hasPkgInfo"

    .prologue
    .line 888
    const/4 v3, 0x0

    .line 889
    .local v3, immediateGc:Z
    const/4 v8, 0x1

    if-ne p0, v8, :cond_0

    .line 890
    const/4 v3, 0x1

    .line 892
    :cond_0
    if-eqz p1, :cond_7

    array-length v8, p1

    if-lez v8, :cond_7

    .line 893
    const/4 v5, 0x0

    .line 894
    .local v5, needCleanup:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v7, v0, v2

    .line 895
    .local v7, ssp:Ljava/lang/String;
    sget-object v9, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v9

    .line 896
    :try_start_0
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 897
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ApplicationPackageManager$ResourceName;

    .line 898
    .local v6, nm:Landroid/app/ApplicationPackageManager$ResourceName;
    iget-object v8, v6, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 900
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 901
    const/4 v5, 0x1

    .line 896
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 904
    .end local v6           #nm:Landroid/app/ApplicationPackageManager$ResourceName;
    :cond_2
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_2
    if-ltz v1, :cond_4

    .line 905
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ApplicationPackageManager$ResourceName;

    .line 906
    .restart local v6       #nm:Landroid/app/ApplicationPackageManager$ResourceName;
    iget-object v8, v6, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 908
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 909
    const/4 v5, 0x1

    .line 904
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 912
    .end local v6           #nm:Landroid/app/ApplicationPackageManager$ResourceName;
    :cond_4
    monitor-exit v9

    .line 894
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 912
    .end local v1           #i:I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 914
    .end local v7           #ssp:Ljava/lang/String;
    :cond_5
    if-nez v5, :cond_6

    if-eqz p2, :cond_7

    .line 915
    :cond_6
    if-eqz v3, :cond_8

    .line 917
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->gc()V

    .line 923
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #needCleanup:Z
    :cond_7
    :goto_3
    return-void

    .line 919
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #needCleanup:Z
    :cond_8
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto :goto_3
.end method

.method static putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "name"
    .parameter "dr"

    .prologue
    .line 881
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 882
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    monitor-exit v1

    .line 885
    return-void

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private putCachedString(Landroid/app/ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "name"
    .parameter "cs"

    .prologue
    .line 992
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 993
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    monitor-exit v1

    .line 995
    return-void

    .line 994
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1214
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->addPackageToPreferred(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    :goto_0
    return-void

    .line 1215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 331
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 340
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 6
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    .line 1243
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    :goto_0
    return-void

    .line 1244
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 6
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"
    .parameter "userId"

    .prologue
    .line 1253
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :goto_0
    return-void

    .line 1254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "names"

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkSignatures(II)I
    .locals 3
    .parameter "uid1"
    .parameter "uid2"

    .prologue
    .line 385
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "pkg1"
    .parameter "pkg2"

    .prologue
    .line 376
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 2
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 1170
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    :goto_0
    return-void

    .line 1171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1272
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    :goto_0
    return-void

    .line 1273
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "names"

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 1
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 1179
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    :goto_0
    return-void

    .line 1180
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    .locals 2
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 1161
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1, p3}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    :goto_0
    return-void

    .line 1162
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public extendVerificationTimeout(IIJ)V
    .locals 1
    .parameter "id"
    .parameter "verificationCodeAtTimeout"
    .parameter "millisecondsToDelay"

    .prologue
    .line 1123
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->extendVerificationTimeout(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :goto_0
    return-void

    .line 1124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public freeStorage(JLandroid/content/IntentSender;)V
    .locals 1
    .parameter "freeStorageSize"
    .parameter "pi"

    .prologue
    .line 1196
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->freeStorage(JLandroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    :goto_0
    return-void

    .line 1197
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    .locals 1
    .parameter "idealStorageSize"
    .parameter "observer"

    .prologue
    .line 1187
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :goto_0
    return-void

    .line 1188
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "activityName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 701
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 706
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 707
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 713
    :goto_0
    return-object v1

    .line 710
    :cond_0
    const/high16 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 712
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 713
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 716
    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 236
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 238
    return-object v0

    .line 240
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 244
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "activityName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 736
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageItemInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 743
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 749
    :goto_0
    return-object v1

    .line 746
    :cond_0
    const/high16 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 748
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 749
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageItemInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 752
    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 3
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getApplicationBlockedSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .parameter "packageName"
    .parameter "user"

    .prologue
    .line 1355
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getApplicationBlockedSettingAsUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1359
    :goto_0
    return v0

    .line 1356
    :catch_0
    move-exception v0

    .line 1359
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 1333
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1337
    :goto_0
    return v0

    .line 1334
    :catch_0
    move-exception v0

    .line 1337
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "info"

    .prologue
    .line 725
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 730
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 221
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 223
    return-object v0

    .line 225
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 226
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 229
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 1058
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "info"

    .prologue
    .line 757
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageItemInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 763
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 2
    .parameter "componentName"

    .prologue
    .line 1312
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1316
    :goto_0
    return v0

    .line 1313
    :catch_0
    move-exception v0

    .line 1316
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    invoke-static {p0}, Landroid/app/Injector$ApplicationPackageManagerHook;->before_getDefaultActivityIcon(Landroid/app/ApplicationPackageManager;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    const/4 v4, 0x0

    .line 654
    new-instance v2, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v2, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 655
    .local v2, name:Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-static {v2}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 656
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    move-object v4, v0

    .line 696
    :goto_0
    return-object v4

    .line 659
    :cond_0
    if-nez p3, :cond_1

    .line 661
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 667
    :cond_1
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 668
    .local v3, r:Landroid/content/res/Resources;
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 681
    invoke-static {v2, v0}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v0

    .line 682
    goto :goto_0

    .line 662
    .end local v3           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 663
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 683
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 684
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving resources for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    .line 687
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving resources for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 689
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v1

    .line 692
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving icon 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .line 1292
    .local p1, outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1296
    :goto_0
    return-object v0

    .line 1293
    :catch_0
    move-exception v0

    .line 1296
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 5
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    .line 459
    .local v2, userId:I
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 460
    .local v1, slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 461
    .end local v1           #slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Package manager has died"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 1
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 4
    .parameter "flags"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 434
    .local v1, slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 435
    .end local v1           #slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1151
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1155
    :goto_0
    return-object v0

    .line 1152
    :catch_0
    move-exception v0

    .line 1155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 4
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 630
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 632
    .local v1, ii:Landroid/content/pm/InstrumentationInfo;
    if-eqz v1, :cond_0

    .line 633
    return-object v1

    .line 635
    .end local v1           #ii:Landroid/content/pm/InstrumentationInfo;
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 639
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #ii:Landroid/content/pm/InstrumentationInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, intentToResolve:Landroid/content/Intent;
    const-string v3, "android.intent.category.INFO"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 116
    .local v2, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 118
    :cond_0
    const-string v3, "android.intent.category.INFO"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 119
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 123
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 124
    :cond_2
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    .line 126
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 127
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 3
    .parameter "uid"

    .prologue
    .line 403
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 4
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v1

    .line 138
    .local v1, gids:[I
    if-eqz v1, :cond_0

    array-length v2, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_1

    .line 139
    :cond_0
    return-object v1

    .line 141
    .end local v1           #gids:[I
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 145
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #gids:[I
    :cond_1
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 76
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    .local v1, pi:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 78
    return-object v1

    .line 80
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 84
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .locals 1
    .parameter "packageName"
    .parameter "userHandle"
    .parameter "observer"

    .prologue
    .line 1206
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    :goto_0
    return-void

    .line 1207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 4
    .parameter "packageName"
    .parameter "userHandle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 153
    .local v1, uid:I
    if-ltz v1, :cond_0

    .line 154
    return v1

    .line 156
    .end local v1           #uid:I
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 160
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #uid:I
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 3
    .parameter "uid"

    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .parameter "permissions"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    .line 446
    .local v2, userId:I
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, p2, v2}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 448
    .local v1, slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 449
    .end local v1           #slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    .line 450
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Package manager has died"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 4
    .parameter "name"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 198
    .local v1, pgi:Landroid/content/pm/PermissionGroupInfo;
    if-eqz v1, :cond_0

    .line 199
    return-object v1

    .line 201
    .end local v1           #pgi:Landroid/content/pm/PermissionGroupInfo;
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 205
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pgi:Landroid/content/pm/PermissionGroupInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 4
    .parameter "name"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 167
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    .local v1, pi:Landroid/content/pm/PermissionInfo;
    if-eqz v1, :cond_0

    .line 169
    return-object v1

    .line 171
    .end local v1           #pi:Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 175
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pi:Landroid/content/pm/PermissionInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1282
    .local p1, outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1286
    :goto_0
    return v0

    .line 1283
    :catch_0
    move-exception v0

    .line 1286
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 1
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1232
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPreferredPackages(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1236
    :goto_0
    return-object v0

    .line 1233
    :catch_0
    move-exception v0

    .line 1236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 281
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 282
    .local v1, pi:Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_0

    .line 283
    return-object v1

    .line 285
    .end local v1           #pi:Landroid/content/pm/ProviderInfo;
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 289
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pi:Landroid/content/pm/ProviderInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 251
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 252
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 253
    return-object v0

    .line 255
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 256
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 259
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .locals 1
    .parameter "activityName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 768
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 7
    .parameter "app"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 774
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v0, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 790
    :cond_0
    return-object v6

    .line 778
    :cond_1
    const/4 v6, 0x0

    .line 780
    .local v6, r:Landroid/content/res/Resources;
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v0, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v5, v5, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/app/LoadedApk;)Landroid/content/res/Resources;

    move-result-object v6

    .line 789
    invoke-static {v6, p1}, Landroid/app/Injector$ApplicationPackageManagerHook;->setResourcesPackageName(Landroid/content/res/Resources;Landroid/content/pm/ApplicationInfo;)V
   
    if-nez v6, :cond_0

    .line 792
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :cond_2
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .parameter "appPackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 797
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 5
    .parameter "appPackageName"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 805
    if-gez p2, :cond_0

    .line 806
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call does not support special user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 809
    :cond_0
    const-string/jumbo v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 810
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v2, v2, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 815
    :goto_0
    return-object v2

    .line 813
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 814
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 815
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 817
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 818
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 820
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_2
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 4
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 266
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 267
    .local v1, si:Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 268
    return-object v1

    .line 270
    .end local v1           #si:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 274
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #si:Landroid/content/pm/ServiceInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 3

    .prologue
    .line 304
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    const/4 v4, 0x0

    .line 1000
    new-instance v1, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v1, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 1001
    .local v1, name:Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v1}, Landroid/app/ApplicationPackageManager;->getCachedString(Landroid/app/ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1002
    .local v3, text:Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 1027
    :goto_0
    return-object v4

    .line 1005
    :cond_0
    if-nez p3, :cond_1

    .line 1007
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 1013
    :cond_1
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 1014
    .local v2, r:Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1015
    invoke-direct {p0, v1, v3}, Landroid/app/ApplicationPackageManager;->putCachedString(Landroid/app/ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v3

    .line 1016
    goto :goto_0

    .line 1008
    .end local v2           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1009
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1017
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 1018
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving resources for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1020
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v0

    .line 1023
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving text 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .locals 5
    .parameter "sharedUserName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 413
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getUidForSharedUser(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 414
    .local v1, uid:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 415
    return v1

    .line 417
    .end local v1           #uid:I
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 420
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #uid:I
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No shared userid for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 1

    .prologue
    .line 1368
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1372
    :goto_0
    return-object v0

    .line 1369
    :catch_0
    move-exception v0

    .line 1372
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .locals 6
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    const/4 v2, 0x0

    .line 1033
    if-nez p3, :cond_0

    .line 1035
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 1041
    :cond_0
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1042
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 1053
    .end local v1           #r:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1043
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 1046
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure retrieving xml 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1049
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 1050
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure retrieving resources for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public grantPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"
    .parameter "permissionName"

    .prologue
    .line 358
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->grantPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 313
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public installExistingPackage(Ljava/lang/String;)I
    .locals 5
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1099
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 1100
    .local v1, res:I
    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    .line 1101
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    .end local v1           #res:I
    :catch_0
    move-exception v0

    .line 1106
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1103
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #res:I
    :cond_0
    return v1
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .locals 1
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"

    .prologue
    .line 1065
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    :goto_0
    return-void

    .line 1066
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public installPackageWithVerification(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 8
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"
    .parameter "verificationURI"
    .parameter "manifestDigest"
    .parameter "encryptionParams"

    .prologue
    .line 1076
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/content/pm/IPackageManager;->installPackageWithVerification(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :goto_0
    return-void

    .line 1078
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 7
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"
    .parameter "verificationParams"
    .parameter "encryptionParams"

    .prologue
    .line 1088
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    :goto_0
    return-void

    .line 1090
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isSafeMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 826
    :try_start_0
    iget v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    if-gez v3, :cond_0

    .line 827
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isSafeMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_0
    iput v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    .line 829
    :cond_0
    iget v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    :goto_1
    return v1

    :cond_1
    move v3, v2

    .line 827
    goto :goto_0

    :cond_2
    move v1, v2

    .line 829
    goto :goto_1

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V
    .locals 1
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 1142
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    :goto_0
    return-void

    .line 1143
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .parameter "processName"
    .parameter "uid"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .parameter "targetPackage"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .locals 15
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 511
    .local v12, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 512
    .local v4, specificTypes:[Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 513
    move-object/from16 v0, p2

    array-length v9, v0

    .line 514
    .local v9, N:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v9, :cond_2

    .line 515
    aget-object v13, p2, v11

    .line 516
    .local v13, sp:Landroid/content/Intent;
    if-eqz v13, :cond_1

    .line 517
    invoke-virtual {v13, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v14

    .line 518
    .local v14, t:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 519
    if-nez v4, :cond_0

    .line 520
    new-array v4, v9, [Ljava/lang/String;

    .line 522
    :cond_0
    aput-object v14, v4, v11

    .line 514
    .end local v14           #t:Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 529
    .end local v9           #N:I
    .end local v11           #i:I
    .end local v13           #sp:Landroid/content/Intent;
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v8}, Landroid/content/pm/IPackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 532
    :catch_0
    move-exception v10

    .line 533
    .local v10, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .parameter "group"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    .local v1, pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-eqz v1, :cond_0

    .line 184
    return-object v1

    .line 186
    .end local v1           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 190
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1223
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->removePackageFromPreferred(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    :goto_0
    return-void

    .line 1224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 349
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->removePermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    .line 1263
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :goto_0
    return-void

    .line 1264
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 468
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "userId"

    .prologue
    .line 474
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 3
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 609
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 4
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 561
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v1, p1, v2, p2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public revokePermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"
    .parameter "permissionName"

    .prologue
    .line 367
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->revokePermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setApplicationBlockedSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
    .locals 2
    .parameter "packageName"
    .parameter "blocked"
    .parameter "user"

    .prologue
    .line 1344
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->setApplicationBlockedSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1349
    :goto_0
    return v0

    .line 1346
    :catch_0
    move-exception v0

    .line 1349
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 6
    .parameter "packageName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 1323
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v4

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    :goto_0
    return-void

    .line 1325
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 2
    .parameter "componentName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 1303
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    :goto_0
    return-void

    .line 1304
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "targetPackage"
    .parameter "installerPackageName"

    .prologue
    .line 1133
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    :goto_0
    return-void

    .line 1134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public verifyPendingInstall(II)V
    .locals 1
    .parameter "id"
    .parameter "response"

    .prologue
    .line 1113
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->verifyPendingInstall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    :goto_0
    return-void

    .line 1114
    :catch_0
    move-exception v0

    goto :goto_0
.end method


.method getContext()Landroid/app/ContextImpl;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    return-object v0
.end method
