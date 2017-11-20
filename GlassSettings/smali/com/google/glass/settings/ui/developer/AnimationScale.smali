.class public Lcom/google/glass/settings/ui/developer/AnimationScale;
.super Ljava/lang/Object;
.source "AnimationScale.java"


# instance fields
.field public final description:Ljava/lang/String;

.field public final id:I

.field public final title:Ljava/lang/String;

.field public final value:F


# direct methods
.method public constructor <init>(IFLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "value"    # F
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/google/glass/settings/ui/developer/AnimationScale;->id:I

    .line 26
    iput p2, p0, Lcom/google/glass/settings/ui/developer/AnimationScale;->value:F

    .line 27
    iput-object p3, p0, Lcom/google/glass/settings/ui/developer/AnimationScale;->title:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/google/glass/settings/ui/developer/AnimationScale;->description:Ljava/lang/String;

    .line 29
    return-void
.end method
