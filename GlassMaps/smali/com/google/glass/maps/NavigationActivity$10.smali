.class Lcom/google/glass/maps/NavigationActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationActivity;

.field final synthetic val$destinations:[Lcom/google/android/maps/driveabout/nav/ao;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 0

    .prologue
    .line 835
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$10;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iput-object p2, p0, Lcom/google/glass/maps/NavigationActivity$10;->val$destinations:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$10;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity$10;->val$destinations:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationActivity;->access$600(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 839
    return-void
.end method
