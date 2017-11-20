.class Lcom/google/glass/tutorial/TutorialBundleActivity$1;
.super Landroid/database/DataSetObserver;
.source "TutorialBundleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/TutorialBundleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/TutorialBundleActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/tutorial/TutorialBundleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/tutorial/TutorialBundleActivity;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/glass/tutorial/TutorialBundleActivity$1;->this$0:Lcom/google/glass/tutorial/TutorialBundleActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialBundleActivity$1;->this$0:Lcom/google/glass/tutorial/TutorialBundleActivity;

    invoke-static {v0}, Lcom/google/glass/tutorial/TutorialBundleActivity;->access$000(Lcom/google/glass/tutorial/TutorialBundleActivity;)V

    .line 30
    return-void
.end method
