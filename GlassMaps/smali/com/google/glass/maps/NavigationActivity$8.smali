.class Lcom/google/glass/maps/NavigationActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationActivity;

.field final synthetic val$trips:[Lcom/google/glass/maps/directions/Trip;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/glass/maps/directions/Trip;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$8;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iput-object p2, p0, Lcom/google/glass/maps/NavigationActivity$8;->val$trips:[Lcom/google/glass/maps/directions/Trip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$8;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationActivity$8;->val$trips:[Lcom/google/glass/maps/directions/Trip;

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationActivity;->access$500(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/glass/maps/directions/Trip;)V

    .line 803
    return-void
.end method
