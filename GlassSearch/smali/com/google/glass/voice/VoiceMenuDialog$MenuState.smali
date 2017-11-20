.class Lcom/google/glass/voice/VoiceMenuDialog$MenuState;
.super Ljava/lang/Object;
.source "VoiceMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MenuState"
.end annotation


# instance fields
.field final actionCallback:Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;

.field final config:Lcom/google/glass/voice/VoiceConfig;

.field final item:Lcom/google/glass/voice/menu/VoiceMenuItem;

.field final overflowMenu:Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;)V
    .locals 0
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;
    .param p2, "config"    # Lcom/google/glass/voice/VoiceConfig;
    .param p3, "actionCallback"    # Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;
    .param p4, "overflowCallback"    # Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 82
    iput-object p2, p0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->config:Lcom/google/glass/voice/VoiceConfig;

    .line 83
    iput-object p3, p0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->actionCallback:Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogActionCallback;

    .line 84
    iput-object p4, p0, Lcom/google/glass/voice/VoiceMenuDialog$MenuState;->overflowMenu:Lcom/google/glass/voice/VoiceMenuDialog$VoiceDialogOverflowMenu;

    .line 85
    return-void
.end method
