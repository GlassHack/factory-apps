.class Lcom/google/glass/maps/NavigationManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/sound/SoundManager$SoundCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationManager;

.field final synthetic val$event:Lcom/google/android/maps/driveabout/nav/i;

.field final synthetic val$metersToStep:I

.field final synthetic val$units:I


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationManager;Lcom/google/android/maps/driveabout/nav/i;II)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/google/glass/maps/NavigationManager$6;->this$0:Lcom/google/glass/maps/NavigationManager;

    iput-object p2, p0, Lcom/google/glass/maps/NavigationManager$6;->val$event:Lcom/google/android/maps/driveabout/nav/i;

    iput p3, p0, Lcom/google/glass/maps/NavigationManager$6;->val$metersToStep:I

    iput p4, p0, Lcom/google/glass/maps/NavigationManager$6;->val$units:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSoundDone(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 4

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager$6;->this$0:Lcom/google/glass/maps/NavigationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationManager;->access$1002(Lcom/google/glass/maps/NavigationManager;Z)Z

    .line 757
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager$6;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationManager;->access$1100(Lcom/google/glass/maps/NavigationManager;)Lcom/google/glass/navlib/Navigation;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->getAlerter()Lcom/google/glass/navlib/Alerter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager$6;->val$event:Lcom/google/android/maps/driveabout/nav/i;

    iget v2, p0, Lcom/google/glass/maps/NavigationManager$6;->val$metersToStep:I

    iget v3, p0, Lcom/google/glass/maps/NavigationManager$6;->val$units:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/navlib/Alerter;->triggerAlertForGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;II)V

    .line 758
    return-void
.end method

.method public onSoundFailed(Lcom/google/glass/sound/SoundManager$SoundId;I)V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager$6;->this$0:Lcom/google/glass/maps/NavigationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationManager;->access$1002(Lcom/google/glass/maps/NavigationManager;Z)Z

    .line 763
    return-void
.end method
