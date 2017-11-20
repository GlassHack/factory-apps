.class Lcom/google/glass/navlib/NavigationImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/navlib/Alerter;


# instance fields
.field final synthetic this$0:Lcom/google/glass/navlib/NavigationImpl;


# direct methods
.method constructor <init>(Lcom/google/glass/navlib/NavigationImpl;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/glass/navlib/NavigationImpl$3;->this$0:Lcom/google/glass/navlib/NavigationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateAlertForGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;II)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl$3;->this$0:Lcom/google/glass/navlib/NavigationImpl;

    invoke-static {v0}, Lcom/google/glass/navlib/NavigationImpl;->access$300(Lcom/google/glass/navlib/NavigationImpl;)Lcom/google/android/maps/driveabout/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/b/a;->b(Lcom/google/android/maps/driveabout/nav/i;II)V

    .line 186
    return-void
.end method

.method public triggerAlertForGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;II)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl$3;->this$0:Lcom/google/glass/navlib/NavigationImpl;

    invoke-static {v0}, Lcom/google/glass/navlib/NavigationImpl;->access$300(Lcom/google/glass/navlib/NavigationImpl;)Lcom/google/android/maps/driveabout/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/b/a;->a(Lcom/google/android/maps/driveabout/nav/i;II)V

    .line 191
    return-void
.end method
