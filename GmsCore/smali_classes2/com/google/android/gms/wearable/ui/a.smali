.class final Lcom/google/android/gms/wearable/ui/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/wearable/g;)V
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 125
    invoke-interface {p2}, Lcom/google/android/gms/wearable/g;->a()Lcom/google/android/gms/wearable/internal/StorageInfoResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/wearable/ui/a;->a:Ljava/util/List;

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/a;->a:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/wearable/ui/b;

    invoke-direct {v1, p0}, Lcom/google/android/gms/wearable/ui/b;-><init>(Lcom/google/android/gms/wearable/ui/a;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/gms/wearable/ui/a;->b:Landroid/view/LayoutInflater;

    .line 134
    iput-object p1, p0, Lcom/google/android/gms/wearable/ui/a;->c:Landroid/content/Context;

    .line 135
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/wearable/internal/PackageStorageInfo;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/ui/a;->a(I)Lcom/google/android/gms/wearable/internal/PackageStorageInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 149
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 154
    if-nez p2, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030064

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 156
    new-instance v0, Lcom/google/android/gms/wearable/ui/c;

    iget-object v1, p0, Lcom/google/android/gms/wearable/ui/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/wearable/ui/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/ui/c;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/ui/a;->a(I)Lcom/google/android/gms/wearable/internal/PackageStorageInfo;

    move-result-object v3

    iget-object v1, v0, Lcom/google/android/gms/wearable/ui/c;->a:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/google/android/gms/wearable/ui/c;->b:Landroid/widget/TextView;

    iget-wide v6, v3, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->d:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-ltz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/wearable/ui/c;->d:Landroid/content/Context;

    invoke-static {v1, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/wearable/ui/c;->c:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/google/android/gms/wearable/ui/c;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v3, v3, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_1
    return-object p2

    :cond_1
    move-object v1, v2

    .line 158
    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v0, v0, Lcom/google/android/gms/wearable/ui/c;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
