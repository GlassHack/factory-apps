.class final Lcom/google/glass/voice/GlassVoiceActivity$1;
.super Ljava/lang/Object;
.source "GlassVoiceActivity.java"

# interfaces
.implements Lcom/google/glass/widget/GlassTipsManager$TipsCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/GlassVoiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowTips()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public getTipsText()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/CharSequence;

    return-object v0
.end method
