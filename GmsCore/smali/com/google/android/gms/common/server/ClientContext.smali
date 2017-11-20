.class public final Lcom/google/android/gms/common/server/ClientContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/ArrayList;

.field private final h:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 412
    new-instance v0, Lcom/google/android/gms/common/server/k;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/ClientContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 103
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/server/ClientContext;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lcom/google/android/gms/common/server/ClientContext;->a:I

    .line 110
    iput-object p3, p0, Lcom/google/android/gms/common/server/ClientContext;->b:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/google/android/gms/common/server/ClientContext;->c:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Lcom/google/android/gms/common/server/ClientContext;->d:Ljava/lang/String;

    .line 113
    iput-object p5, p0, Lcom/google/android/gms/common/server/ClientContext;->e:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->f:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->g:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->h:Landroid/os/Bundle;

    .line 117
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lcom/google/android/gms/common/server/ClientContext;->a:I

    .line 128
    iput-object p2, p0, Lcom/google/android/gms/common/server/ClientContext;->b:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lcom/google/android/gms/common/server/ClientContext;->c:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lcom/google/android/gms/common/server/ClientContext;->d:Ljava/lang/String;

    .line 131
    iput-object p5, p0, Lcom/google/android/gms/common/server/ClientContext;->e:Ljava/lang/String;

    .line 132
    iput-object p6, p0, Lcom/google/android/gms/common/server/ClientContext;->f:Ljava/util/ArrayList;

    .line 133
    iput-object p7, p0, Lcom/google/android/gms/common/server/ClientContext;->g:Ljava/util/ArrayList;

    .line 134
    iput-object p8, p0, Lcom/google/android/gms/common/server/ClientContext;->h:Landroid/os/Bundle;

    .line 135
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;B)V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/common/server/ClientContext;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/server/ClientContext;
    .locals 11

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 323
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-static {p2, p3}, Lcom/google/android/gms/common/server/ClientContext;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 327
    const-string v0, "calling_uid"

    invoke-interface {v9, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 328
    if-eq v1, v3, :cond_0

    if-eq v1, p1, :cond_1

    :cond_0
    move-object v0, v5

    .line 364
    :goto_0
    return-object v0

    .line 333
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 334
    const-string v0, "granted_scopes"

    invoke-interface {v9, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 336
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v2

    .line 337
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 338
    aget-object v4, v3, v0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 343
    const-string v0, "requested_visible_actions"

    invoke-interface {v9, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 345
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 346
    array-length v4, v3

    move v0, v2

    .line 347
    :goto_2
    if-ge v0, v4, :cond_3

    .line 348
    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 352
    :cond_3
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 353
    const-string v0, "extras"

    invoke-interface {v9, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 357
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 359
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    .line 360
    :goto_3
    if-ge v2, v3, :cond_4

    .line 361
    aget-object v4, v0, v2

    add-int/lit8 v10, v2, 0x1

    aget-object v10, v0, v10

    invoke-virtual {v8, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 364
    :cond_4
    new-instance v0, Lcom/google/android/gms/common/server/ClientContext;

    const-string v2, "resolved_account_name"

    invoke-interface {v9, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "requested_account_name"

    invoke-interface {v9, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "calling_package_name"

    invoke-interface {v9, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "auth_package_name"

    invoke-interface {v9, v10, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/ClientContext;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "common.clientcontext_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/google/android/gms/common/server/ClientContext;->a:I

    return v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/16 v6, 0x2c

    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/server/ClientContext;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/server/ClientContext;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 277
    const-string v0, "calling_uid"

    iget v1, p0, Lcom/google/android/gms/common/server/ClientContext;->a:I

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 278
    const-string v0, "resolved_account_name"

    iget-object v1, p0, Lcom/google/android/gms/common/server/ClientContext;->b:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    const-string v0, "requested_account_name"

    iget-object v1, p0, Lcom/google/android/gms/common/server/ClientContext;->c:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 280
    const-string v0, "calling_package_name"

    iget-object v1, p0, Lcom/google/android/gms/common/server/ClientContext;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    const-string v0, "auth_package_name"

    iget-object v1, p0, Lcom/google/android/gms/common/server/ClientContext;->e:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    .line 284
    if-lez v1, :cond_0

    .line 285
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 289
    :cond_1
    const-string v0, "granted_scopes"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    const-string v0, "requested_visible_actions"

    const-string v1, ","

    iget-object v5, p0, Lcom/google/android/gms/common/server/ClientContext;->g:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 291
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->h:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 292
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 296
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->h:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 298
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->h:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 304
    :cond_3
    const-string v0, "extras"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    :cond_4
    invoke-static {v3}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 307
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/ClientContext;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 242
    if-eqz p1, :cond_0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "key cannot contain \',\'"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 243
    if-eqz p2, :cond_1

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    const-string v0, "value cannot contain \',\'"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->h:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void

    :cond_3
    move v0, v1

    .line 242
    goto :goto_0
.end method

.method public final a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    if-nez p1, :cond_1

    .line 201
    :cond_0
    return-void

    .line 198
    :cond_1
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 199
    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->f:Ljava/util/ArrayList;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/server/ClientContext;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/server/ClientContext;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 385
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 386
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 387
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->h:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/server/ClientContext;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 438
    instance-of v1, p1, Lcom/google/android/gms/common/server/ClientContext;

    if-eqz v1, :cond_0

    .line 439
    check-cast p1, Lcom/google/android/gms/common/server/ClientContext;

    .line 440
    iget-object v1, p1, Lcom/google/android/gms/common/server/ClientContext;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/common/server/ClientContext;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/common/server/ClientContext;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/common/server/ClientContext;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/google/android/gms/common/server/ClientContext;->a:I

    iget v2, p0, Lcom/google/android/gms/common/server/ClientContext;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 446
    :cond_0
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "oauth2:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->f:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no scopes granted"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/server/ClientContext;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 497
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/common/server/ClientContext;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 503
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "mRequestedAccountName"

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "mResolvedAccountName"

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "mCallingPackageName"

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "mCallingUid"

    iget v2, p0, Lcom/google/android/gms/common/server/ClientContext;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "mAuthPackageName"

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "mGrantedScopes"

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "isProxyingAuthentication"

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/ClientContext;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "mVisibleActions"

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "mExtras"

    iget-object v2, p0, Lcom/google/android/gms/common/server/ClientContext;->h:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/google/android/gms/common/server/ClientContext;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 408
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 409
    iget-object v0, p0, Lcom/google/android/gms/common/server/ClientContext;->h:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 410
    return-void
.end method
