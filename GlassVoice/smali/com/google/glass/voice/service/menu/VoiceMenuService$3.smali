.class Lcom/google/glass/voice/service/menu/VoiceMenuService$3;
.super Lcom/google/glass/voice/VoiceMenuDialog;
.source "VoiceMenuService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/service/menu/VoiceMenuService;->createDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/service/menu/VoiceMenuService;Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$3;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-direct {p0, p2, p3}, Lcom/google/glass/voice/VoiceMenuDialog;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/glass/voice/service/menu/VoiceMenuService$3;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 201
    return-void
.end method
