.class public Lcom/google/glass/settings/ui/developer/LayoutOverlay;
.super Ljava/lang/Object;
.source "LayoutOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;
    }
.end annotation


# instance fields
.field private final labelResId:I

.field private final name:Ljava/lang/String;

.field private final sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "labelResId"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->name:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->labelResId:I

    .line 36
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->sections:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public varargs addSection(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;
    .locals 1
    .param p1, "labelResId"    # I
    .param p2, "color"    # I
    .param p3, "boxes"    # [Lcom/google/glass/settings/ui/developer/RectBuilder;

    .prologue
    .line 55
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;-><init>(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    return-object v0
.end method

.method public addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;
    .locals 1
    .param p1, "section"    # Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-object p0
.end method

.method public getLabelResId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->labelResId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->sections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
