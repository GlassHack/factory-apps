.class Lcom/google/glass/widget/GlassTips$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassTips;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassTips;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/glass/widget/GlassTips$1;->this$0:Lcom/google/glass/widget/GlassTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips$1;->this$0:Lcom/google/glass/widget/GlassTips;

    invoke-virtual {v0}, Lcom/google/glass/widget/GlassTips;->fadeOutAndHideTips()V

    .line 67
    return-void
.end method
