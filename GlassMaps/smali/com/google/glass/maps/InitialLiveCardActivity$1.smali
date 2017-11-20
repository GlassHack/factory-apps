.class Lcom/google/glass/maps/InitialLiveCardActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

.field final synthetic val$destinations:[Lcom/google/android/maps/driveabout/nav/ao;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/InitialLiveCardActivity;[Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/glass/maps/InitialLiveCardActivity$1;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    iput-object p2, p0, Lcom/google/glass/maps/InitialLiveCardActivity$1;->val$destinations:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/glass/maps/InitialLiveCardActivity$1;->this$0:Lcom/google/glass/maps/InitialLiveCardActivity;

    iget-object v1, p0, Lcom/google/glass/maps/InitialLiveCardActivity$1;->val$destinations:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-static {v0, v1}, Lcom/google/glass/maps/InitialLiveCardActivity;->access$000(Lcom/google/glass/maps/InitialLiveCardActivity;[Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 330
    return-void
.end method
