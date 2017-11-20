.class public Lcom/google/glass/maps/NavigationBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.google.glass.action.NAVIGATION_BROADCAST"

.field private static final EXTRA_ITEM_ID:Ljava/lang/String; = "itemId"

.field private static final EXTRA_OPERATION:Ljava/lang/String; = "operation"

.field public static final OPERATION_FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final OPERATION_STOP:Ljava/lang/String; = "stop"

.field public static final OPERATION_WAKE_UP:Ljava/lang/String; = "wake_up"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.NAVIGATION_BROADCAST"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private getOperation(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "operation"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    const-string v0, "menu_item_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/glass/maps/NavigationBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-direct {p0, p2}, Lcom/google/glass/maps/NavigationBroadcastReceiver;->getOperation(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/google/glass/maps/NavigationBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Received broadcast: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    const-string v1, "wake_up"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-static {p1}, Lcom/google/glass/maps/NavigationApplicationState;->initialize(Landroid/content/Context;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v1, "foreground"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/maps/NavigationActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 50
    :cond_2
    const-string v1, "stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    invoke-static {p1}, Lcom/google/glass/maps/NavigationService;->stopNavigation(Landroid/content/Context;)V

    .line 54
    const-string v0, "itemId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItemAsync(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_3
    sget-object v1, Lcom/google/glass/maps/NavigationBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown operation: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
