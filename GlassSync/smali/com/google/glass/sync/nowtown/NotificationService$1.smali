.class Lcom/google/glass/sync/nowtown/NotificationService$1;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Lcom/google/glass/sync/nowtown/RequestCodeSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/nowtown/NotificationService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/nowtown/NotificationService;

.field value:I


# direct methods
.method constructor <init>(Lcom/google/glass/sync/nowtown/NotificationService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/sync/nowtown/NotificationService;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/glass/sync/nowtown/NotificationService$1;->this$0:Lcom/google/glass/sync/nowtown/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/sync/nowtown/NotificationService$1;->value:I

    return-void
.end method


# virtual methods
.method public nextRequestCode()I
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 99
    iget v0, p0, Lcom/google/glass/sync/nowtown/NotificationService$1;->value:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/glass/sync/nowtown/NotificationService$1;->value:I

    return v0
.end method
