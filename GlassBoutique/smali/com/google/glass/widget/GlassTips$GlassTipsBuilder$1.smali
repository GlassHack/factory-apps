.class Lcom/google/glass/widget/GlassTips$GlassTipsBuilder$1;
.super Ljava/lang/Object;
.source "GlassTips.java"

# interfaces
.implements Lcom/google/glass/widget/GlassTips$GlassTipsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->rotate()Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

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
