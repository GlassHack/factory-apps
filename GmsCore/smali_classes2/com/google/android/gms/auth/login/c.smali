.class public final Lcom/google/android/gms/auth/login/c;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/g;
.implements Lcom/google/android/gms/common/h;
.implements Lcom/google/android/gms/people/t;
.implements Lcom/google/android/gms/people/u;


# instance fields
.field private a:Lcom/google/android/gms/people/q;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/login/c;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    const-string v1, "appName"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v1, Lcom/google/android/gms/auth/login/c;

    invoke-direct {v1}, Lcom/google/android/gms/auth/login/c;-><init>()V

    .line 61
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/login/c;->e(Landroid/os/Bundle;)V

    .line 62
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const v5, 0x7f0d0177

    const v4, 0x7f0d0055

    .line 118
    const v0, 0x7f030096

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    check-cast v0, Lcom/google/android/gms/auth/login/b;

    invoke-interface {v0}, Lcom/google/android/gms/auth/login/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/CircleImageView;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/CircleImageView;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/CircleImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/auth/login/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/CircleImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/c;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/CircleImageView;

    iget-object v2, p0, Lcom/google/android/gms/auth/login/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/CircleImageView;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/CircleImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Profile picture for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/auth/login/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/CircleImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    const v0, 0x7f0d00e8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/c;->k()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100317

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/auth/login/c;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-object v1

    .line 119
    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/CircleImageView;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/c;->k()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/CircleImageView;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/CircleImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/auth/login/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/CircleImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/CircleImageView;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/c;->k()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020192

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/CircleImageView;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/CircleImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Profile picture for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/auth/login/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/CircleImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public final a()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/auth/login/c;->a:Lcom/google/android/gms/people/q;

    iget-object v0, v0, Lcom/google/android/gms/people/q;->a:Lcom/google/android/gms/people/internal/l;

    new-instance v1, Lcom/google/android/gms/people/v;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/people/v;-><init>(Lcom/google/android/gms/people/u;B)V

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/people/internal/l;->a(Lcom/google/android/gms/common/api/i;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 103
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->r:Landroid/os/Bundle;

    .line 104
    const-string v1, "appName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/auth/login/c;->b:Ljava/lang/String;

    .line 105
    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/c;->c:Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/google/android/gms/people/q;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {v1}, Landroid/support/v4/app/j;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/people/q;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/g;Lcom/google/android/gms/common/h;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/c;->a:Lcom/google/android/gms/people/q;

    .line 111
    if-eqz p1, :cond_0

    .line 112
    const-string v0, "userIcon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/c;->d:Landroid/graphics/Bitmap;

    .line 114
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/b;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/google/android/gms/common/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 161
    invoke-static {p2}, Lcom/google/android/gms/people/w;->a(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/c;->d:Landroid/graphics/Bitmap;

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/auth/login/c;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f0d0177

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/CircleImageView;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/CircleImageView;->a(Landroid/graphics/Bitmap;)V

    .line 167
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/people/model/c;)V
    .locals 5

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/people/model/c;->c()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 173
    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/model/c;->b(I)Lcom/google/android/gms/people/model/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/people/model/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/auth/login/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/model/c;->b(I)Lcom/google/android/gms/people/model/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/people/model/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_1
    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/google/android/gms/auth/login/c;->a:Lcom/google/android/gms/people/q;

    iget-object v2, v1, Lcom/google/android/gms/people/q;->a:Lcom/google/android/gms/people/internal/l;

    new-instance v3, Lcom/google/android/gms/people/r;

    invoke-direct {v3, v1, p0}, Lcom/google/android/gms/people/r;-><init>(Lcom/google/android/gms/people/q;Lcom/google/android/gms/people/t;)V

    const/4 v1, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/google/android/gms/people/internal/l;->a(Lcom/google/android/gms/common/api/i;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/u;

    .line 185
    :cond_0
    return-void

    .line 172
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/gms/auth/login/c;->a:Lcom/google/android/gms/people/q;

    iget-object v0, v0, Lcom/google/android/gms/people/q;->a:Lcom/google/android/gms/people/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/people/internal/l;->c()V

    .line 149
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 138
    const-string v0, "userIcon"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/c;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    return-void
.end method

.method public final u()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->u()V

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/auth/login/c;->a:Lcom/google/android/gms/people/q;

    iget-object v0, v0, Lcom/google/android/gms/people/q;->a:Lcom/google/android/gms/people/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/people/internal/l;->c()V

    .line 127
    return-void
.end method

.method public final v()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->v()V

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/auth/login/c;->a:Lcom/google/android/gms/people/q;

    iget-object v0, v0, Lcom/google/android/gms/people/q;->a:Lcom/google/android/gms/people/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/people/internal/l;->d()V

    .line 133
    return-void
.end method
