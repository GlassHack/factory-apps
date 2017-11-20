.class final Lcom/google/android/location/places/ui/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/MarkerMapFragment;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/MarkerMapFragment;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/google/android/location/places/ui/ac;->a:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/android/location/places/ui/ac;->a:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->j()Landroid/support/v4/app/j;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gsf.GOOGLE_LOCATION_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
