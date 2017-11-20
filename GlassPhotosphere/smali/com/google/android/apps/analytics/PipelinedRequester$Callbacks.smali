.class interface abstract Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/analytics/PipelinedRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract pipelineModeChanged(Z)V
.end method

.method public abstract requestSent()V
.end method

.method public abstract serverError(I)V
.end method
