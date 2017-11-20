.class public interface abstract Lcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;
.super Ljava/lang/Object;
.source "CompositeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/composite/CompositeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompositeReadyCallback"
.end annotation


# virtual methods
.method public abstract onCompositeReady(Landroid/graphics/Bitmap;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
.end method

.method public abstract onError()V
.end method
