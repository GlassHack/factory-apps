.class Lcom/google/glass/browser/WebBrowserActivity$4;
.super Ljava/lang/Object;
.source "WebBrowserActivity.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/browser/WebBrowserActivity;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/browser/WebBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/browser/WebBrowserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/browser/WebBrowserActivity;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/google/glass/browser/WebBrowserActivity$4;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 1
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity$4;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v0}, Lcom/google/glass/browser/WebBrowserActivity;->access$2100(Lcom/google/glass/browser/WebBrowserActivity;)V

    .line 778
    return-void
.end method
