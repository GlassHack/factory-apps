.class public final Lcom/google/android/gms/fitness/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/ac;

.field public static final b:Lcom/google/android/gms/common/api/ac;

.field public static final c:Lcom/google/android/gms/common/api/ac;

.field public static final d:Lcom/google/android/gms/common/api/ac;

.field public static final e:Lcom/google/android/gms/common/api/ac;

.field public static final f:Lcom/google/android/gms/common/api/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/google/android/gms/common/api/ac;

    const-string v1, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ac;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/c;->a:Lcom/google/android/gms/common/api/ac;

    .line 131
    new-instance v0, Lcom/google/android/gms/common/api/ac;

    const-string v1, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ac;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/c;->b:Lcom/google/android/gms/common/api/ac;

    .line 142
    new-instance v0, Lcom/google/android/gms/common/api/ac;

    const-string v1, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ac;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/c;->c:Lcom/google/android/gms/common/api/ac;

    .line 153
    new-instance v0, Lcom/google/android/gms/common/api/ac;

    const-string v1, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ac;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/c;->d:Lcom/google/android/gms/common/api/ac;

    .line 164
    new-instance v0, Lcom/google/android/gms/common/api/ac;

    const-string v1, "https://www.googleapis.com/auth/fitness.body.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ac;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/c;->e:Lcom/google/android/gms/common/api/ac;

    .line 175
    new-instance v0, Lcom/google/android/gms/common/api/ac;

    const-string v1, "https://www.googleapis.com/auth/fitness.body.write"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ac;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/c;->f:Lcom/google/android/gms/common/api/ac;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const-string v0, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const-string p0, "https://www.googleapis.com/auth/fitness.activity.write"

    .line 214
    :cond_0
    :goto_0
    return-object p0

    .line 208
    :cond_1
    const-string v0, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    const-string p0, "https://www.googleapis.com/auth/fitness.location.write"

    goto :goto_0

    .line 211
    :cond_2
    const-string v0, "https://www.googleapis.com/auth/fitness.body.read"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string p0, "https://www.googleapis.com/auth/fitness.body.write"

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 223
    const v0, 0xdea8

    if-gt v0, p0, :cond_0

    const v0, 0xdf0b

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 185
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 186
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    invoke-static {v0}, Lcom/google/android/gms/fitness/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
