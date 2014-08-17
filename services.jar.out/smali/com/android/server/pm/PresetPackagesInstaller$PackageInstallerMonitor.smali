.class public interface abstract Lcom/android/server/pm/PresetPackagesInstaller$PackageInstallerMonitor;
.super Ljava/lang/Object;
.source "PresetPackagesInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PresetPackagesInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackageInstallerMonitor"
.end annotation


# virtual methods
.method public abstract onPackageInstallFinish()V
.end method

.method public abstract onPackageInstallStart(I)V
.end method

.method public abstract onProgress(II)V
.end method
