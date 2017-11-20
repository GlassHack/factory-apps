.class Lcom/google/glass/maps/BaseActivity$1;
.super Lcom/google/glass/maps/view/Animations$SimpleAnimatorListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/BaseActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/BaseActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/glass/maps/BaseActivity$1;->this$0:Lcom/google/glass/maps/BaseActivity;

    invoke-direct {p0}, Lcom/google/glass/maps/view/Animations$SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/maps/BaseActivity$1;->this$0:Lcom/google/glass/maps/BaseActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseActivity;->onDismissCompleted()V

    .line 54
    return-void
.end method
