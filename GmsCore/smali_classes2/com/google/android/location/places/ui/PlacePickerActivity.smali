.class public Lcom/google/android/location/places/ui/PlacePickerActivity;
.super Landroid/support/v4/app/j;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/ui/an;
.implements Lcom/google/android/location/places/ui/j;


# instance fields
.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Lcom/google/android/location/places/ui/r;

.field private r:Lcom/google/android/location/places/ui/q;

.field private s:Lcom/google/android/location/places/ui/aw;

.field private t:Lcom/google/android/location/places/ui/MarkerMapFragment;

.field private u:Lcom/google/android/location/places/ui/ae;

.field private v:Lcom/google/android/location/places/ui/a;

.field private w:Landroid/view/View;

.field private x:Landroid/view/ViewGroup;

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/j;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/ui/PlacePickerActivity;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->c()V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->y:Z

    .line 239
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/places/h;)V
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lcom/google/android/location/places/ui/av;

    invoke-direct {v0, p0, p1}, Lcom/google/android/location/places/ui/av;-><init>(Lcom/google/android/location/places/ui/PlacePickerActivity;Lcom/google/android/gms/location/places/h;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/places/h;IILjava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 203
    iget-object v4, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->q:Lcom/google/android/location/places/ui/r;

    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->t:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->S()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->n:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->o:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->p:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v9}, Lcom/google/android/location/places/ui/bd;->a(Landroid/app/Activity;Lcom/google/android/gms/location/places/h;IILcom/google/android/location/places/ui/r;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->q:Lcom/google/android/location/places/ui/r;

    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->s:Lcom/google/android/location/places/ui/aw;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/aw;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->t:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v3}, Lcom/google/android/location/places/ui/MarkerMapFragment;->S()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v3

    check-cast p1, Lcom/google/android/gms/location/places/internal/PlaceImpl;

    iget-object v4, v2, Lcom/google/android/location/places/ui/r;->i:Landroid/content/Intent;

    const-string v5, "selected_place"

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/d;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/google/android/location/places/ui/r;->i:Landroid/content/Intent;

    const-string v5, "third_party_attributions"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v2, Lcom/google/android/location/places/ui/r;->i:Landroid/content/Intent;

    const-string v4, "final_latlng_bounds"

    invoke-static {v3, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/d;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/google/android/location/places/ui/r;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_1

    iget-object v3, v2, Lcom/google/android/location/places/ui/r;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    aget-object v0, v0, v10

    invoke-static {v3, v0}, Lcom/google/android/gms/common/k;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v0, v2, Lcom/google/android/location/places/ui/r;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/google/android/location/places/ui/r;->i:Landroid/content/Intent;

    const-string v3, "selection_type"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v2, Lcom/google/android/location/places/ui/r;->i:Landroid/content/Intent;

    const-string v3, "selection_index"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    iget-object v0, v2, Lcom/google/android/location/places/ui/r;->i:Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->finish()V

    .line 209
    return-void

    :cond_1
    move v0, v10

    .line 206
    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->v:Lcom/google/android/location/places/ui/a;

    if-nez v0, :cond_0

    .line 214
    invoke-static {}, Lcom/google/android/location/places/ui/a;->a()Lcom/google/android/location/places/ui/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->v:Lcom/google/android/location/places/ui/a;

    .line 217
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v0

    const v1, 0x7f0d0127

    iget-object v2, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->v:Lcom/google/android/location/places/ui/a;

    const-string v3, "add_a_place_fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/z;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/z;->a()Landroid/support/v4/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/z;->b()I

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->y:Z

    .line 223
    return-void
.end method

.method public final d()Lcom/google/android/location/places/ui/r;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->q:Lcom/google/android/location/places/ui/r;

    return-object v0
.end method

.method public final e()Lcom/google/android/location/places/ui/q;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->r:Lcom/google/android/location/places/ui/q;

    return-object v0
.end method

.method public final f()Lcom/google/android/location/places/ui/aw;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->s:Lcom/google/android/location/places/ui/aw;

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->w:Landroid/view/View;

    const v1, 0x7f04000a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    const v0, 0x7f04000b

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 163
    new-instance v1, Lcom/google/android/location/places/ui/au;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/au;-><init>(Lcom/google/android/location/places/ui/PlacePickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 178
    iget-object v1, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->x:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 179
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->v:Lcom/google/android/location/places/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->v:Lcom/google/android/location/places/ui/a;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->v:Lcom/google/android/location/places/ui/a;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/a;->Y()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/j;->onBackPressed()V

    goto :goto_0
.end method

.method public onClickOutsideDialog(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 194
    iget-object v4, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->q:Lcom/google/android/location/places/ui/r;

    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->t:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->S()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->n:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->o:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->p:I

    move-object v0, p0

    move v3, v2

    move-object v6, v1

    invoke-static/range {v0 .. v9}, Lcom/google/android/location/places/ui/bd;->a(Landroid/app/Activity;Lcom/google/android/gms/location/places/h;IILcom/google/android/location/places/ui/r;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->finish()V

    .line 198
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0d0127

    const/4 v4, 0x1

    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f030075

    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 77
    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find caller. Did you forget to use startActivityForResult?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->n:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->n:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find caller package name."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    iget-object v3, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 88
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing required permission: android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->o:Ljava/lang/String;

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->n:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 95
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->p:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_3
    :goto_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->w:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->w:Landroid/view/View;

    const v1, 0x7f0d0128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->x:Landroid/view/ViewGroup;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 108
    iget-object v1, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->x:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 109
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c0000

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    new-instance v0, Lcom/google/android/location/places/ui/q;

    invoke-direct {v0, p0}, Lcom/google/android/location/places/ui/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->r:Lcom/google/android/location/places/ui/q;

    .line 115
    new-instance v0, Lcom/google/android/location/places/ui/r;

    invoke-virtual {p0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/places/ui/r;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->q:Lcom/google/android/location/places/ui/r;

    .line 116
    new-instance v0, Lcom/google/android/location/places/ui/aw;

    iget-object v1, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->q:Lcom/google/android/location/places/ui/r;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/location/places/ui/aw;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/location/places/ui/r;)V

    iput-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->s:Lcom/google/android/location/places/ui/aw;

    .line 117
    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->s:Lcom/google/android/location/places/ui/aw;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/aw;->c()V

    .line 119
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    const v1, 0x7f0d012a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/ui/MarkerMapFragment;

    iput-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->t:Lcom/google/android/location/places/ui/MarkerMapFragment;

    .line 121
    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->t:Lcom/google/android/location/places/ui/MarkerMapFragment;

    iget-object v1, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->r:Lcom/google/android/location/places/ui/q;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Lcom/google/android/location/places/ui/q;)Lcom/google/android/location/places/ui/MarkerMapFragment;

    .line 123
    if-eqz p1, :cond_4

    .line 124
    const-string v0, "ADDING_PLACE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->y:Z

    .line 125
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    const-string v1, "add_a_place_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/ui/a;

    iput-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->v:Lcom/google/android/location/places/ui/a;

    .line 127
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    const-string v1, "pick_a_place_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/ui/ae;

    iput-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->u:Lcom/google/android/location/places/ui/ae;

    .line 131
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->y:Z

    if-eqz v0, :cond_6

    .line 132
    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->v:Lcom/google/android/location/places/ui/a;

    if-nez v0, :cond_5

    .line 133
    invoke-static {}, Lcom/google/android/location/places/ui/a;->a()Lcom/google/android/location/places/ui/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->v:Lcom/google/android/location/places/ui/a;

    .line 134
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->v:Lcom/google/android/location/places/ui/a;

    const-string v2, "add_a_place_fragment"

    invoke-virtual {v0, v5, v1, v2}, Landroid/support/v4/app/z;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/z;->b()I

    .line 148
    :cond_5
    :goto_1
    return-void

    .line 97
    :catch_0
    move-exception v0

    const-string v0, "Places"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const-string v0, "Places"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find package info for package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->u:Lcom/google/android/location/places/ui/ae;

    if-nez v0, :cond_5

    .line 141
    invoke-static {}, Lcom/google/android/location/places/ui/ae;->U()Lcom/google/android/location/places/ui/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->u:Lcom/google/android/location/places/ui/ae;

    .line 142
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->u:Lcom/google/android/location/places/ui/ae;

    const-string v2, "pick_a_place_fragment"

    invoke-virtual {v0, v5, v1, v2}, Landroid/support/v4/app/z;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/z;->b()I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->s:Lcom/google/android/location/places/ui/aw;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/aw;->d()V

    .line 153
    invoke-super {p0}, Landroid/support/v4/app/j;->onDestroy()V

    .line 154
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 58
    const-string v0, "ADDING_PLACE"

    iget-boolean v1, p0, Lcom/google/android/location/places/ui/PlacePickerActivity;->y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    return-void
.end method
