.class public abstract Lcom/android/server/am/IActiveServices;
.super Ljava/lang/Object;
.source "IActiveServices.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method abstract bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I
.end method

.method abstract cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V
.end method

.method abstract dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
.end method

.method abstract dumpServicesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
.end method

.method abstract forceStopLocked(Ljava/lang/String;IZZ)Z
.end method

.method getDefault()Lcom/android/server/am/IActiveServices;
    .locals 0

    .prologue
    .line 66
    return-object p0
.end method

.method abstract getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
.end method

.method abstract getRunningServiceInfoLocked(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method abstract hasBackgroundServices(I)Z
.end method

.method abstract killServicesLocked(Lcom/android/server/am/ProcessRecord;Z)V
.end method

.method abstract peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;
.end method

.method abstract processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method abstract publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
.end method

.method abstract removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
.end method

.method abstract scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method abstract serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;III)V
.end method

.method abstract serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
.end method

.method abstract startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/ComponentName;
.end method

.method abstract stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
.end method

.method abstract stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
.end method

.method abstract unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Z)V
.end method

.method abstract unbindServiceLocked(Landroid/app/IServiceConnection;)Z
.end method
