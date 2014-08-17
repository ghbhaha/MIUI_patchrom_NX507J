.class public interface abstract Lcom/android/server/wm/IWmSmartShowFuncs;
.super Ljava/lang/Object;
.source "IWmSmartShowFuncs.java"


# virtual methods
.method public abstract addTaskLw(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/Task;Z)I
.end method

.method public abstract adjustInputWindowLw(Ljava/lang/Object;)V
.end method

.method public abstract adjustLayerLw(Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract adjustShownFrameLw(Ljava/lang/Object;Landroid/graphics/Matrix;)V
.end method

.method public abstract adjustTransparentRegion(Landroid/graphics/Region;Ljava/lang/Object;)V
.end method

.method public abstract beginComputeFrameLw(Ljava/lang/Object;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
.end method

.method public abstract beginLayoutLw(I)V
.end method

.method public abstract canBeImeTargetLw(Ljava/lang/Object;)Z
.end method

.method public abstract createSmartShowData(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract displayReady()V
.end method

.method public abstract finishAssignLayersLw()V
.end method

.method public abstract finishComputeFrameLw(Ljava/lang/Object;)V
.end method

.method public abstract finishLayoutLw(I)V
.end method

.method public abstract getConfigurationLocked(Lcom/android/server/wm/WindowState;)Landroid/content/res/Configuration;
.end method

.method public abstract getDockLayerLw(Lcom/android/server/wm/WindowState;)I
.end method

.method public abstract getInputWindowListLw(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getStack(Ljava/lang/Object;)Lcom/android/server/wm/TaskStack;
.end method

.method public abstract getSurfaceFlags(Ljava/lang/Object;)I
.end method

.method public abstract isClipNeeded(Ljava/lang/Object;)Z
.end method

.method public abstract isFullscreenLw(Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract moveHomeStackBoxLw(Lcom/android/server/wm/DisplayContent;Z)Z
.end method

.method public abstract needAdjustShownFrameLw(Ljava/lang/Object;)Z
.end method

.method public abstract onFocusedWindowChangedLw(ILjava/lang/Object;)V
.end method

.method public abstract removeStackBoxLw(Lcom/android/server/wm/StackBox;)I
.end method

.method public abstract setFocusedStackFrameLw()Z
.end method

.method public abstract setFocusedStackLayerLw()Z
.end method

.method public abstract setInputWindowsLw(Ljava/lang/Object;)V
.end method

.method public abstract setStackBoxSizesLw(Ljava/lang/Object;Landroid/graphics/Rect;Z)I
.end method

.method public abstract shouldIgnoreAppTokenOrientationLocked(Lcom/android/server/wm/AppWindowToken;)Z
.end method

.method public abstract shouldIgnoreWindowOrientationLocked(Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract shouldImpactHomeStackBoxLw(Lcom/android/server/wm/StackBox;)Z
.end method

.method public abstract shouldUpdateWindowFocus(Lcom/android/server/wm/WindowState;Z)Z
.end method

.method public abstract stackBoxCreatedLw(III)V
.end method

.method public abstract stackBoxStatusChangedLw(II)V
.end method
