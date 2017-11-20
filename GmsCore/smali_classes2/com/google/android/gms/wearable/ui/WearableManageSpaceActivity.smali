.class public Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;
.super Landroid/support/v7/a/d;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/ListView;

.field private s:Lcom/google/android/gms/wearable/ui/e;

.field private t:Lcom/google/android/gms/common/api/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v7/a/d;-><init>()V

    .line 220
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Lcom/google/android/gms/common/api/j;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->t:Lcom/google/android/gms/common/api/j;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;Lcom/google/android/gms/wearable/ui/e;)Lcom/google/android/gms/wearable/ui/e;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->s:Lcom/google/android/gms/wearable/ui/e;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->r:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Lcom/google/android/gms/wearable/ui/e;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->s:Lcom/google/android/gms/wearable/ui/e;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->q:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    new-instance v0, Lcom/google/android/gms/wearable/ui/d;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/ui/d;-><init>(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/ui/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/a/d;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f0300eb

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->setContentView(I)V

    .line 58
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->n:Landroid/view/View;

    .line 59
    const v0, 0x7f0d020b

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->o:Landroid/view/View;

    .line 61
    const v0, 0x7f0d0209

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->p:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0d020a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->q:Landroid/widget/Button;

    .line 63
    const v0, 0x7f0d0195

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->r:Landroid/widget/ListView;

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/wearable/y;->f:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k;->a()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->t:Lcom/google/android/gms/common/api/j;

    .line 73
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/ui/a;

    .line 94
    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    if-ltz p3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/ui/a;->getCount()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 100
    invoke-virtual {v0, p3}, Lcom/google/android/gms/wearable/ui/a;->a(I)Lcom/google/android/gms/wearable/internal/PackageStorageInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->b:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->s:Lcom/google/android/gms/wearable/ui/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/ui/e;->cancel(Z)Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->s:Lcom/google/android/gms/wearable/ui/e;

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->t:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->b()V

    .line 88
    invoke-super {p0}, Landroid/support/v7/a/d;->onPause()V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-super {p0}, Landroid/support/v7/a/d;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->t:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    .line 79
    new-instance v0, Lcom/google/android/gms/wearable/ui/e;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/ui/e;-><init>(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;B)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->s:Lcom/google/android/gms/wearable/ui/e;

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->s:Lcom/google/android/gms/wearable/ui/e;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/ui/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    return-void
.end method
