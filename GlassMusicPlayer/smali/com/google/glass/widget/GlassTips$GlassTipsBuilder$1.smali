.class Lcom/google/glass/widget/GlassTips$GlassTipsBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/widget/GlassTips$GlassTipsListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder$1;->this$0:Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTipsShown()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder$1;->this$0:Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    invoke-static {v0}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->access$400(Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;)Lcom/google/glass/widget/SmoothRotatingTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/SmoothRotatingTextView;->scheduleNextRotation()V

    .line 168
    return-void
.end method
