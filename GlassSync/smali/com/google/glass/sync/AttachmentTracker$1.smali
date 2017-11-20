.class Lcom/google/glass/sync/AttachmentTracker$1;
.super Ljava/lang/ThreadLocal;
.source "AttachmentTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/AttachmentTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/AttachmentTracker;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/AttachmentTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/AttachmentTracker;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/glass/sync/AttachmentTracker$1;->this$0:Lcom/google/glass/sync/AttachmentTracker;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;

    iget-object v1, p0, Lcom/google/glass/sync/AttachmentTracker$1;->this$0:Lcom/google/glass/sync/AttachmentTracker;

    iget-object v2, p0, Lcom/google/glass/sync/AttachmentTracker$1;->this$0:Lcom/google/glass/sync/AttachmentTracker;

    invoke-static {v2}, Lcom/google/glass/sync/AttachmentTracker;->access$100(Lcom/google/glass/sync/AttachmentTracker;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;-><init>(Lcom/google/glass/sync/AttachmentTracker;Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/glass/sync/AttachmentTracker$1;->initialValue()Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;

    move-result-object v0

    return-object v0
.end method
