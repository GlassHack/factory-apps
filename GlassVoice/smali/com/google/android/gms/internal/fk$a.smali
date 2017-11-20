.class Lcom/google/android/gms/internal/fk$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/model/AggregatedPerson;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic Ob:Lcom/google/android/gms/internal/fk;

.field private Oc:Z

.field private Od:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private Oe:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/people/model/EmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private Of:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/people/model/PhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private Og:Lcom/google/android/gms/people/model/EmailAddress;

.field private final Oh:Z

.field private final yh:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fk;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/fk$a;->yh:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->getGaiaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fk$a;->Oh:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/people/model/EmailAddress;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/people/model/EmailAddress;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/people/model/EmailAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private a(Landroid/database/Cursor;Lcom/google/android/gms/internal/fk$b;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->e(Lcom/google/android/gms/internal/fk;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/fk$b;->getLabel(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private aK(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->hasPlusPerson()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->a(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/internal/ex;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/fk$a;->yh:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ex;->get(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v1}, Lcom/google/android/gms/internal/fk;->d(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v2}, Lcom/google/android/gms/internal/fk;->d(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/data/DataHolder;->aO(I)I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aL(Ljava/lang/String;)J
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->hasPlusPerson()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->a(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/internal/ex;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/fk$a;->yh:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ex;->get(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v1}, Lcom/google/android/gms/internal/fk;->d(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v2}, Lcom/google/android/gms/internal/fk;->d(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/data/DataHolder;->aO(I)I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;II)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private aM(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->hasPlusPerson()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v1}, Lcom/google/android/gms/internal/fk;->a(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/internal/ex;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/fk$a;->yh:I

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ex;->get(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v1}, Lcom/google/android/gms/internal/fk;->d(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v2}, Lcom/google/android/gms/internal/fk;->d(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/data/DataHolder;->aO(I)I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)I

    move-result v0

    :cond_0
    return v0
.end method

.method private aN(Ljava/lang/String;)D
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->hasPlusPerson()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->a(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/internal/ex;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/fk$a;->yh:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ex;->get(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v1}, Lcom/google/android/gms/internal/fk;->d(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v2}, Lcom/google/android/gms/internal/fk;->d(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/data/DataHolder;->aO(I)I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;II)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private fY()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->a(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/internal/ex;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/fk$a;->yh:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ex;->dE(I)I

    move-result v0

    return v0
.end method

.method private fZ()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->b(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/internal/ex;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/fk$a;->yh:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ex;->dE(I)I

    move-result v0

    return v0
.end method

.method private ga()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fk$a;->Oc:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fk$a;->Oc:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/fk$a;->fZ()I

    move-result v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Od:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Oe:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/google/android/gms/internal/fk$a;->Of:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->hasPlusPerson()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->g(Lcom/google/android/gms/internal/fk;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->h(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/internal/fq$b;

    move-result-object v0

    const-string/jumbo v3, "v_phones"

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/fk$a;->aK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/fq$b;->aO(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Of:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Of:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Of:Ljava/util/ArrayList;

    :cond_3
    iput-object v4, p0, Lcom/google/android/gms/internal/fk$a;->Og:Lcom/google/android/gms/people/model/EmailAddress;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v4}, Lcom/google/android/gms/internal/fk;->b(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/internal/ex;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gms/internal/fk$a;->yh:I

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/ex;->get(II)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v5}, Lcom/google/android/gms/internal/fk;->e(Lcom/google/android/gms/internal/fk;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v4}, Lcom/google/android/gms/internal/fk;->e(Lcom/google/android/gms/internal/fk;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gms/internal/fk$a;->Od:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v4, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v4}, Lcom/google/android/gms/internal/fk;->e(Lcom/google/android/gms/internal/fk;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/google/android/gms/internal/fk$a;->Og:Lcom/google/android/gms/people/model/EmailAddress;

    if-nez v5, :cond_9

    iget-object v4, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v4}, Lcom/google/android/gms/internal/fk;->e(Lcom/google/android/gms/internal/fk;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v5}, Lcom/google/android/gms/internal/fk;->i(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/internal/fk$b;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/fk$a;->a(Landroid/database/Cursor;Lcom/google/android/gms/internal/fk$b;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v5}, Lcom/google/android/gms/internal/fk;->e(Lcom/google/android/gms/internal/fk;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v4}, Lcom/google/android/gms/internal/fk;->e(Lcom/google/android/gms/internal/fk;)Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/fl;->b(Landroid/database/Cursor;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    new-instance v6, Lcom/google/android/gms/internal/fm;

    invoke-direct {v6, v4, v5}, Lcom/google/android/gms/internal/fm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/fk$a;->Oe:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v4}, Lcom/google/android/gms/internal/fk;->j(Lcom/google/android/gms/internal/fk;)Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v6}, Lcom/google/android/gms/people/model/EmailAddress;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v4}, Lcom/google/android/gms/internal/fk;->j(Lcom/google/android/gms/internal/fk;)Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v6}, Lcom/google/android/gms/people/model/EmailAddress;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iput-object v6, p0, Lcom/google/android/gms/internal/fk$a;->Og:Lcom/google/android/gms/people/model/EmailAddress;

    iget-object v4, p0, Lcom/google/android/gms/internal/fk$a;->Oe:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/google/android/gms/internal/fk$a;->Oe:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    const-string/jumbo v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v4}, Lcom/google/android/gms/internal/fk;->e(Lcom/google/android/gms/internal/fk;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v5}, Lcom/google/android/gms/internal/fk;->k(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/internal/fk$b;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/fk$a;->a(Landroid/database/Cursor;Lcom/google/android/gms/internal/fk$b;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v5}, Lcom/google/android/gms/internal/fk;->e(Lcom/google/android/gms/internal/fk;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Lcom/google/android/gms/internal/fr;

    invoke-direct {v6, v4, v5}, Lcom/google/android/gms/internal/fr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/fk$a;->Of:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/fk$a;->Of:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->getOwnerAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAffinity1()D
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "affinity1"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aN(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAffinity2()D
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "affinity2"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aN(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAffinity3()D
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "affinity3"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aN(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAffinity4()D
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "affinity4"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aN(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAffinity5()D
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "affinity5"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aN(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    sget-object v0, Lcom/google/android/gms/internal/fb;->MQ:Lcom/google/android/gms/internal/fb;

    const-string v1, "avatar"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fk$a;->aK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fb;->az(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBelongingCircleIds()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string/jumbo v0, "v_circle_ids"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fe;->aA(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactIds()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/fk$a;->ga()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Od:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEmailAddresses()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/people/model/EmailAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->getQualifiedId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fe;->aC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/fm;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/fm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fk$a;->a(Lcom/google/android/gms/people/model/EmailAddress;)Ljava/lang/Iterable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/fk$a;->ga()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fk$a;->Oh:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Og:Lcom/google/android/gms/people/model/EmailAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Og:Lcom/google/android/gms/people/model/EmailAddress;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->a(Lcom/google/android/gms/people/model/EmailAddress;)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/people/model/EmailAddress;->EMPTY_EMAILS:Ljava/lang/Iterable;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->hasContact()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/fd;->fR()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "PeopleAggregator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Row should have a contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->getQualifiedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fd;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/google/android/gms/people/model/EmailAddress;->EMPTY_EMAILS:Ljava/lang/Iterable;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Oe:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "family_name"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->f(Lcom/google/android/gms/internal/fk;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/fk$a;->yh:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "given_name"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInViewerDomain()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "in_viewer_domain"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aM(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInteractionRankSortKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "sort_key_irank"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "last_modified"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aL(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->hasPlusPerson()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "name"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->e(Lcom/google/android/gms/internal/fk;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v1}, Lcom/google/android/gms/internal/fk;->b(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/internal/ex;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/fk$a;->yh:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ex;->get(II)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->e(Lcom/google/android/gms/internal/fk;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNameSortKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "sort_key"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAccountName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->hasPlusPerson()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->d(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOwnerPlusPageId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->hasPlusPerson()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->d(Lcom/google/android/gms/internal/fk;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pagegaiaid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeopleInCommon()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "people_in_common"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fe;->aA(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/people/model/PhoneNumber;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->getQualifiedId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fe;->aE(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/people/model/PhoneNumber;->EMPTY_PHONES:Ljava/lang/Iterable;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/fk$a;->ga()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Of:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getPlusPageGaiaId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk$a;->getOwnerPlusPageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfileType()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "profile_type"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aM(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getQualifiedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "qualified_id"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowId()J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasContact()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/fk$a;->fZ()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlusPerson()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/fk$a;->fY()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "blocked"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aM(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNameVerified()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$a;->Ob:Lcom/google/android/gms/internal/fk;

    invoke-static {v0}, Lcom/google/android/gms/internal/fk;->c(Lcom/google/android/gms/internal/fk;)V

    const-string v0, "name_verified"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fk$a;->aM(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
