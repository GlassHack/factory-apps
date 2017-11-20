.class Lcom/google/glass/widget/GlassTips$1;
.super Ljava/lang/Object;
.source "GlassTips.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/GlassTips;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassTips;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassTips;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/GlassTips;

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
