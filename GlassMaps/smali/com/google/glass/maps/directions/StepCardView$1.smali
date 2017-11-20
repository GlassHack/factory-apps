.class Lcom/google/glass/maps/directions/StepCardView$1;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/directions/StepCardView;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/directions/StepCardView;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/glass/maps/directions/StepCardView$1;->this$0:Lcom/google/glass/maps/directions/StepCardView;

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 224
    return-void
.end method
