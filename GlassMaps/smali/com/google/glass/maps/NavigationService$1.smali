.class Lcom/google/glass/maps/NavigationService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationService;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationService;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/maps/NavigationService$1;->this$0:Lcom/google/glass/maps/NavigationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/maps/NavigationService$1;->this$0:Lcom/google/glass/maps/NavigationService;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationService;->access$100(Lcom/google/glass/maps/NavigationService;)V

    .line 103
    return-void
.end method
