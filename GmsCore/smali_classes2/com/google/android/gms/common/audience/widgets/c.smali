.class final Lcom/google/android/gms/common/audience/widgets/c;
.super Lcom/google/android/gms/common/audience/b/b;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/common/people/data/Audience;

.field private b:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/google/android/gms/common/audience/b/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/google/android/gms/common/audience/widgets/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/e/i;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/c;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 255
    const-string v0, "audience"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/Audience;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/audience/widgets/c;->a(Lcom/google/android/gms/common/people/data/Audience;)V

    .line 256
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/people/data/Audience;)V
    .locals 5

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/android/gms/common/audience/widgets/c;->a:Lcom/google/android/gms/common/people/data/Audience;

    .line 268
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/c;->a:Lcom/google/android/gms/common/people/data/Audience;

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/c;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :goto_0
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    .line 274
    invoke-virtual {p1}, Lcom/google/android/gms/common/people/data/Audience;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 276
    goto :goto_1

    .line 275
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/e/i;Lcom/google/android/gms/e/i;Lcom/google/android/gms/common/audience/b/d;)V
    .locals 2

    .prologue
    .line 250
    new-instance v1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/common/audience/widgets/c;->b:Landroid/widget/TextView;

    .line 251
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public final b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    const-string v1, "audience"

    iget-object v2, p0, Lcom/google/android/gms/common/audience/widgets/c;->a:Lcom/google/android/gms/common/people/data/Audience;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 262
    return-object v0
.end method
