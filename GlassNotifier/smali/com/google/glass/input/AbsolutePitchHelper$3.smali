.class Lcom/google/glass/input/AbsolutePitchHelper$3;
.super Ljava/lang/Object;
.source "AbsolutePitchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/AbsolutePitchHelper;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/AbsolutePitchHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/input/AbsolutePitchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/input/AbsolutePitchHelper;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/glass/input/AbsolutePitchHelper$3;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper$3;->this$0:Lcom/google/glass/input/AbsolutePitchHelper;

    invoke-static {v0}, Lcom/google/glass/input/AbsolutePitchHelper;->access$500(Lcom/google/glass/input/AbsolutePitchHelper;)V

    .line 97
    return-void
.end method
