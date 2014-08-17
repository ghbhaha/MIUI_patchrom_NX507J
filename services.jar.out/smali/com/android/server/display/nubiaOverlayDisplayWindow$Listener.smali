.class public interface abstract Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onOrientationChanged()V
.end method

.method public abstract onSetRotated(Z)V
.end method

.method public abstract onWindowCreated(Landroid/graphics/SurfaceTexture;F)V
.end method

.method public abstract onWindowDestroyed()V
.end method
