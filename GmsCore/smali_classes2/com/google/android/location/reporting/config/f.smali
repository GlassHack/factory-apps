.class public final Lcom/google/android/location/reporting/config/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/reporting/config/e;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    invoke-static {p1}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    .line 319
    iput-object p1, p0, Lcom/google/android/location/reporting/config/f;->a:Landroid/content/Context;

    .line 320
    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/location/reporting/config/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/a/d;->a(Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.apps.maps"

    invoke-static {v0, v2}, Lcom/google/android/gms/location/reporting/a/d;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/location/reporting/config/Conditions;
    .locals 7

    .prologue
    .line 340
    new-instance v0, Lcom/google/android/location/reporting/config/Conditions;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/location/reporting/config/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;)Z

    move-result v2

    sget-object v3, Lcom/google/android/location/reporting/service/y;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v3}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0}, Lcom/google/android/location/reporting/config/f;->b()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/location/reporting/config/f;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gms/common/util/m;->a(Landroid/content/Context;)Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/location/reporting/config/f;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/location/reporting/b/l;->b(Landroid/content/Context;)Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/reporting/config/Conditions;-><init>(ZZZZZZ)V

    return-object v0
.end method
