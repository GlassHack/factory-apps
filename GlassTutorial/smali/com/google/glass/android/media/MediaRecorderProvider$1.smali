.class Lcom/google/glass/android/media/MediaRecorderProvider$1;
.super Ljava/lang/Object;
.source "MediaRecorderProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/android/media/MediaRecorderProvider;->get()Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Landroid/media/MediaRecorder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/android/media/MediaRecorderProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/android/media/MediaRecorderProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/android/media/MediaRecorderProvider;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/glass/android/media/MediaRecorderProvider$1;->this$0:Lcom/google/glass/android/media/MediaRecorderProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/media/MediaRecorder;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/glass/android/media/MediaRecorderProvider$1;->get()Landroid/media/MediaRecorder;

    move-result-object v0

    return-object v0
.end method
