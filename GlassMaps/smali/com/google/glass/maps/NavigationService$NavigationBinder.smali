.class public Lcom/google/glass/maps/NavigationService$NavigationBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationService;


# direct methods
.method public constructor <init>(Lcom/google/glass/maps/NavigationService;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/glass/maps/NavigationService$NavigationBinder;->this$0:Lcom/google/glass/maps/NavigationService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getNavigationManager()Lcom/google/glass/maps/NavigationManager;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/maps/NavigationService$NavigationBinder;->this$0:Lcom/google/glass/maps/NavigationService;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationService;->access$000(Lcom/google/glass/maps/NavigationService;)Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    return-object v0
.end method

.method getService()Lcom/google/glass/maps/NavigationService;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/maps/NavigationService$NavigationBinder;->this$0:Lcom/google/glass/maps/NavigationService;

    return-object v0
.end method
