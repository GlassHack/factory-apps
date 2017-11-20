.class Lcom/google/glass/maps/NavigationActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$4;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$4;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActivity;->onUserInteraction()V

    .line 290
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$4;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActivity;->closeVoiceMenu()V

    .line 291
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$4;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActivity;->showStopDirectionsCountdown()V

    .line 292
    return-void
.end method
