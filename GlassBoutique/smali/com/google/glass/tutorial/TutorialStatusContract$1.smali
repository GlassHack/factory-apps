.class Lcom/google/glass/tutorial/TutorialStatusContract$1;
.super Ljava/lang/Object;
.source "TutorialStatusContract.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/tutorial/TutorialStatusContract;->setCompletionStatusAsync(Landroid/content/ContentResolver;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/TutorialStatusContract;

.field final synthetic val$completed:Z

.field final synthetic val$resolver:Landroid/content/ContentResolver;

.field final synthetic val$tutorial:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;


# direct methods
.method constructor <init>(Lcom/google/glass/tutorial/TutorialStatusContract;Landroid/content/ContentResolver;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/tutorial/TutorialStatusContract;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/glass/tutorial/TutorialStatusContract$1;->this$0:Lcom/google/glass/tutorial/TutorialStatusContract;

    iput-object p2, p0, Lcom/google/glass/tutorial/TutorialStatusContract$1;->val$resolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/google/glass/tutorial/TutorialStatusContract$1;->val$tutorial:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    iput-boolean p4, p0, Lcom/google/glass/tutorial/TutorialStatusContract$1;->val$completed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialStatusContract$1;->this$0:Lcom/google/glass/tutorial/TutorialStatusContract;

    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialStatusContract$1;->val$resolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/google/glass/tutorial/TutorialStatusContract$1;->val$tutorial:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    iget-boolean v3, p0, Lcom/google/glass/tutorial/TutorialStatusContract$1;->val$completed:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/tutorial/TutorialStatusContract;->setCompletionStatus(Landroid/content/ContentResolver;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;Z)V

    .line 126
    return-void
.end method
