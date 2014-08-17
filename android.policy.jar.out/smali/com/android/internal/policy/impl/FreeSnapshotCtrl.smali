.class Lcom/android/internal/policy/impl/FreeSnapshotCtrl;
.super Ljava/lang/Object;
.source "FreeSnapshotCtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
.implements Lcom/android/internal/policy/impl/ISettingListener;


# static fields
.field private static final CLASS_NAME_FREESNAPSHOT_EXAMPLE:Ljava/lang/String; = "cn.nubia.freesnapshots.ExampleActivity"

.field private static final CLASS_NAME_FREESNAPSHOT_MAIN:Ljava/lang/String; = "cn.nubia.freesnapshots.FreeSnapshotActivity"

.field private static final FREE_SNAPSHOT:Ljava/lang/String; = "free_snapshot"

.field private static final FREE_SNAPSHOT_NOT_FIRST_START:Ljava/lang/String; = "free_snapshot_not_first_started"

.field private static final KEY_CAPTURE_SCREEN:Ljava/lang/String; = "capture_screen"

.field private static final KEY_IS_AT_HOME:Ljava/lang/String; = "isAtHome"

.field private static final PACKAGE_NAME_FREESNAPSHOT:Ljava/lang/String; = "cn.nubia.freesnapshots"

.field private static final TAG:Ljava/lang/String; = "FreeSnapshotCtrl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFreeSnapshot:I

.field private mIsAtHome:Z

.field private mNotFirstStart:I

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 0
    .parameter "manager"
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 50
    iput-object p2, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 120
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 123
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 124
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 125
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 129
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    :cond_0
    :goto_0
    return-object v2

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    const-string v2, "FreeSnapshotCtrl"

    const-string v3, "bitmap2Bytes--IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 129
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    throw v2
.end method

.method private closeFreeSnapshot(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 186
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 188
    .local v0, am:Landroid/app/ActivityManager;
    const-string v1, "cn.nubia.freesnapshots"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private enable()Z
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mFreeSnapshot:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCurrentRunningAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 153
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 155
    .local v3, runningTask:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 156
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 157
    .local v4, task:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v4, :cond_0

    .line 158
    new-instance v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .end local v2           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-direct {v2}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 159
    .restart local v2       #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iput v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 160
    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 161
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 166
    .end local v4           #task:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    if-eqz v2, :cond_1

    iget-object v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v6, :cond_1

    .line 167
    iget-object v6, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 168
    .local v1, cn:Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 170
    .end local v1           #cn:Landroid/content/ComponentName;
    :cond_1
    return-object v5
.end method

.method private getHomes(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .local v4, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 176
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/high16 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 179
    .local v2, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 180
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method private isStartedSnapshot(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, isStarted:Z
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->getCurrentRunningAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, packageName:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "cn.nubia.freesnapshots"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    const/4 v1, 0x1

    .line 141
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mIsAtHome:Z

    .line 146
    :goto_0
    return v1

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->getHomes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, homeNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mIsAtHome:Z

    goto :goto_0
.end method

.method private needDoFreeSnapshot(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->enable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startFreeSnapshot(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 9
    .parameter "phoneWindowManager"

    .prologue
    .line 95
    iget-object v0, p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 96
    .local v0, Display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 100
    .local v4, outSize:Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 101
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 102
    .local v5, screenBmp:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 103
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v1, activity:Landroid/content/Intent;
    const-string v3, "cn.nubia.freesnapshots.FreeSnapshotActivity"

    .line 105
    .local v3, distClass:Ljava/lang/String;
    iget v6, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mNotFirstStart:I

    if-nez v6, :cond_2

    .line 106
    const-string v3, "cn.nubia.freesnapshots.ExampleActivity"

    .line 108
    :cond_2
    const-string v6, "cn.nubia.freesnapshots"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 111
    .local v2, bytes:[B
    if-eqz v2, :cond_0

    .line 112
    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performNubiaHapticFeedbackLw(Ljava/lang/String;IZ)Z

    .line 114
    const-string v6, "capture_screen"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 115
    const-string v6, "isAtHome"

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mIsAtHome:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateSnapshotSettings(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 192
    const-string v0, "free_snapshot"

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mFreeSnapshot:I

    .line 194
    const-string v0, "free_snapshot_not_first_started"

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mNotFirstStart:I

    .line 196
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 2
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 72
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->needDoFreeSnapshot(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->isStartedSnapshot(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->closeFreeSnapshot(Landroid/content/Context;)V

    .line 79
    :cond_0
    :goto_0
    const-wide/high16 v0, -0x8000

    return-wide v0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->startFreeSnapshot(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "resolver"
    .parameter "observer"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 56
    const-string v0, "free_snapshot"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 59
    const-string v0, "free_snapshot_not_first_started"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 62
    return-void
.end method

.method public updateSettings()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->updateSnapshotSettings(Landroid/content/ContentResolver;)V

    .line 67
    return-void
.end method
