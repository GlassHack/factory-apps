.class public final Lcom/google/android/location/reporting/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/content/IntentFilter;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/reporting/b/c;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/location/reporting/b/c;->b:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-static {p0}, Lcom/google/android/location/reporting/b/c;->b(Landroid/content/Context;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ReceiverCallNotAllowedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :goto_0
    if-nez v0, :cond_0

    .line 72
    const/4 v0, -0x1

    .line 76
    :goto_1
    return v0

    .line 74
    :cond_0
    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    const-string v2, "scale"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    div-int v0, v1, v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/location/reporting/b/c;->a:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lcom/google/android/location/reporting/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/reporting/b/c;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v2

    .line 47
    :cond_0
    :goto_0
    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    return v0

    .line 46
    :cond_1
    const-string v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "plugged"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_5

    const/16 v0, 0x41

    :goto_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_4
    move v0, v2

    .line 47
    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/reporting/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/reporting/b/c;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method
