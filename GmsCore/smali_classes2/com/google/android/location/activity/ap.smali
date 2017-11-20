.class final Lcom/google/android/location/activity/ap;
.super Lcom/google/android/location/activity/ar;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/activity/an;


# direct methods
.method private constructor <init>(Lcom/google/android/location/activity/an;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/location/activity/ap;->a:Lcom/google/android/location/activity/an;

    invoke-direct {p0, p1}, Lcom/google/android/location/activity/ar;-><init>(Lcom/google/android/location/activity/an;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/activity/an;B)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/location/activity/ap;-><init>(Lcom/google/android/location/activity/an;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 87
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "OffBodyDetector"

    const-string v1, "OffState: stateEntered."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method protected final b(Z)V
    .locals 4

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/location/activity/ap;->a:Lcom/google/android/location/activity/an;

    new-instance v1, Lcom/google/android/location/activity/as;

    iget-object v2, p0, Lcom/google/android/location/activity/ap;->a:Lcom/google/android/location/activity/an;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/location/activity/as;-><init>(Lcom/google/android/location/activity/an;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/an;->a(Lcom/google/android/location/activity/an;Lcom/google/android/location/activity/ar;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "Off"

    return-object v0
.end method
