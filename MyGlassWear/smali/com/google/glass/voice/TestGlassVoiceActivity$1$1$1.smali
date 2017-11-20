.class Lcom/google/glass/voice/TestGlassVoiceActivity$1$1$1;
.super Lcom/google/glass/voice/menu/VoiceMenu;
.source "TestGlassVoiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/TestGlassVoiceActivity$1$1;->createVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/glass/voice/TestGlassVoiceActivity$1$1;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/TestGlassVoiceActivity$1$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$2"    # Lcom/google/glass/voice/TestGlassVoiceActivity$1$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/glass/voice/TestGlassVoiceActivity$1$1$1;->this$2:Lcom/google/glass/voice/TestGlassVoiceActivity$1$1;

    invoke-direct {p0, p2}, Lcom/google/glass/voice/menu/VoiceMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setPrimaryMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "primaryMenuItems":Ljava/util/List;, "Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    return-void
.end method

.method public showPrimaryMenu()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
