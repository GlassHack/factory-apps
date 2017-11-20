.class Lcom/google/glass/util/SafeServiceConnection$1;
.super Ljava/lang/Object;
.source "SafeServiceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/SafeServiceConnection;->bindAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/SafeServiceConnection;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$throwExceptionOnFailure:Z


# direct methods
.method constructor <init>(Lcom/google/glass/util/SafeServiceConnection;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/util/SafeServiceConnection;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/glass/util/SafeServiceConnection$1;->this$0:Lcom/google/glass/util/SafeServiceConnection;

    iput-object p2, p0, Lcom/google/glass/util/SafeServiceConnection$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/google/glass/util/SafeServiceConnection$1;->val$throwExceptionOnFailure:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection$1;->this$0:Lcom/google/glass/util/SafeServiceConnection;

    iget-object v1, p0, Lcom/google/glass/util/SafeServiceConnection$1;->val$context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/google/glass/util/SafeServiceConnection$1;->val$throwExceptionOnFailure:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeServiceConnection;->bind(Landroid/content/Context;Z)Lcom/google/glass/util/SafeServiceConnection;

    .line 188
    return-void
.end method
