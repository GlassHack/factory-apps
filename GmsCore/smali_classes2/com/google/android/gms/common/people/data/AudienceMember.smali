.class public final Lcom/google/android/gms/common/people/data/AudienceMember;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/people/data/d;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/gms/common/people/data/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/data/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/people/data/AudienceMember;->CREATOR:Lcom/google/android/gms/common/people/data/d;

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->a:I

    .line 113
    iput p2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->b:I

    .line 114
    iput p3, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->c:I

    .line 115
    iput-object p4, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->d:Ljava/lang/String;

    .line 116
    iput-object p5, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->e:Ljava/lang/String;

    .line 117
    iput-object p6, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->f:Ljava/lang/String;

    .line 118
    iput-object p7, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->g:Ljava/lang/String;

    .line 120
    if-eqz p8, :cond_0

    :goto_0
    iput-object p8, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->h:Landroid/os/Bundle;

    .line 121
    return-void

    .line 120
    :cond_0
    new-instance p8, Landroid/os/Bundle;

    invoke-direct {p8}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 125
    const/4 v1, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/people/data/AudienceMember;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 2

    .prologue
    .line 137
    const-string v0, "Person ID must not be empty."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    invoke-static {p0}, Lcom/google/android/gms/people/internal/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/common/people/data/AudienceMember;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 151
    new-instance v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/people/data/AudienceMember;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 2

    .prologue
    .line 162
    invoke-static {p0}, Lcom/google/android/gms/people/internal/t;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/common/people/data/AudienceMember;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 173
    new-instance v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    const/4 v1, 0x1

    const/4 v2, -0x1

    move-object v3, p0

    move-object v5, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/people/data/AudienceMember;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 186
    sget-object v0, Lcom/google/android/gms/people/internal/t;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 187
    if-nez v0, :cond_0

    .line 188
    sget-object v0, Lcom/google/android/gms/people/internal/t;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 190
    :goto_0
    new-instance v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    const/4 v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p0

    move-object v5, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/people/data/AudienceMember;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->c:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 306
    instance-of v1, p1, Lcom/google/android/gms/common/people/data/AudienceMember;

    if-nez v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 310
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/people/data/AudienceMember;

    .line 312
    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->a:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->b:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->c:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 248
    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->b:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 298
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 255
    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->b:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 321
    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "Person [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->e:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->f:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    const-string v0, "Circle [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->d:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->f:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_1
    const-string v0, "Group [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->d:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->f:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 290
    invoke-static {p0, p1}, Lcom/google/android/gms/common/people/data/d;->a(Lcom/google/android/gms/common/people/data/AudienceMember;Landroid/os/Parcel;)V

    .line 291
    return-void
.end method
