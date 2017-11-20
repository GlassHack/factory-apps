.class public Lcom/google/android/gms/location/internal/LocationRequestInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/internal/r;

.field static final a:Ljava/util/List;


# instance fields
.field b:Lcom/google/android/gms/location/LocationRequest;

.field c:Z

.field d:Z

.field e:Z

.field f:Ljava/util/List;

.field final g:Ljava/lang/String;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a:Ljava/util/List;

    .line 221
    new-instance v0, Lcom/google/android/gms/location/internal/r;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->CREATOR:Lcom/google/android/gms/location/internal/r;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/LocationRequest;ZZZLjava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->h:I

    .line 108
    iput-object p2, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->b:Lcom/google/android/gms/location/LocationRequest;

    .line 109
    iput-boolean p3, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c:Z

    .line 110
    iput-boolean p4, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->d:Z

    .line 111
    iput-boolean p5, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e:Z

    .line 112
    iput-object p6, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->f:Ljava/util/List;

    .line 113
    iput-object p7, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->g:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/internal/LocationRequestInternal;)V
    .locals 8

    .prologue
    .line 85
    iget v1, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->h:I

    iget-object v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->b:Lcom/google/android/gms/location/LocationRequest;

    iget-boolean v3, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c:Z

    iget-boolean v4, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->d:Z

    iget-boolean v5, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e:Z

    iget-object v6, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->f:Ljava/util/List;

    iget-object v7, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->g:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/internal/LocationRequestInternal;-><init>(ILcom/google/android/gms/location/LocationRequest;ZZZLjava/util/List;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 74
    const/4 v3, 0x0

    sget-object v6, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a:Ljava/util/List;

    move-object v0, p0

    move-object v2, p2

    move v4, v1

    move v5, v1

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/internal/LocationRequestInternal;-><init>(ILcom/google/android/gms/location/LocationRequest;ZZZLjava/util/List;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;-><init>(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/location/LocationRequest;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->b:Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method

.method public final a(Ljava/util/List;)Lcom/google/android/gms/location/internal/LocationRequestInternal;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->f:Ljava/util/List;

    .line 195
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/location/internal/LocationRequestInternal;
    .locals 0

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c:Z

    .line 143
    return-object p0
.end method

.method public final b(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->b:Lcom/google/android/gms/location/LocationRequest;

    .line 121
    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/location/internal/LocationRequestInternal;
    .locals 0

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->d:Z

    .line 161
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c:Z

    return v0
.end method

.method public final c(Z)Lcom/google/android/gms/location/internal/LocationRequestInternal;
    .locals 0

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e:Z

    .line 180
    return-object p0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->d:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->f:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 263
    instance-of v1, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    if-nez v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    check-cast p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 268
    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->b:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->d:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->d:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->f:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->f:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 204
    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->d:Z

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e:Z

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->f:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c:Z

    .line 216
    iput-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->d:Z

    .line 217
    iput-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e:Z

    .line 218
    sget-object v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->f:Ljava/util/List;

    .line 219
    return-void
.end method

.method final h()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->h:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, " requestNlpDebugInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, " restorePendingIntentListeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, " triggerUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, " clients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 254
    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 231
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/internal/r;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/os/Parcel;I)V

    .line 232
    return-void
.end method
