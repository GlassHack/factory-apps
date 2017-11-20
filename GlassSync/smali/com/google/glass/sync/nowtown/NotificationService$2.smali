.class Lcom/google/glass/sync/nowtown/NotificationService$2;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/nowtown/NotificationService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/nowtown/NotificationService;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/nowtown/NotificationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/nowtown/NotificationService;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/glass/sync/nowtown/NotificationService$2;->this$0:Lcom/google/glass/sync/nowtown/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationService$2;->this$0:Lcom/google/glass/sync/nowtown/NotificationService;

    invoke-static {v0, p2}, Lcom/google/glass/sync/nowtown/NotificationService;->access$000(Lcom/google/glass/sync/nowtown/NotificationService;Landroid/database/Cursor;)V

    .line 112
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/sync/nowtown/NotificationService$2;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
