.class Lcom/google/glass/maps/NavigationActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationActivity;

.field final synthetic val$isShowingRouteOverview:Z


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;Z)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$5;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iput-boolean p2, p0, Lcom/google/glass/maps/NavigationActivity$5;->val$isShowingRouteOverview:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$5;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActivity;->onUserInteraction()V

    .line 308
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$5;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActivity;->closeVoiceMenu()V

    .line 311
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$5;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    new-instance v1, Lcom/google/glass/maps/NavigationActivity$5$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/NavigationActivity$5$1;-><init>(Lcom/google/glass/maps/NavigationActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method
