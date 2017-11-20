.class public Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "GlassUrlSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private linkSpec:Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

.field private textAppearanceSpan:Landroid/text/style/TextAppearanceSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "linkSpec"    # Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;->linkSpec:Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 22
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    sget v1, Lcom/google/glass/common/R$style;->TimelineMessageLinkText:I

    invoke-direct {v0, p1, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;->textAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    .line 23
    return-void
.end method


# virtual methods
.method public getLinkSpec()Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;->linkSpec:Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;->textAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, p1}, Landroid/text/style/TextAppearanceSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 37
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;->textAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, p1}, Landroid/text/style/TextAppearanceSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 32
    return-void
.end method
