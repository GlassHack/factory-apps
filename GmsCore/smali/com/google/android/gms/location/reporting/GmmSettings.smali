.class public Lcom/google/android/gms/location/reporting/GmmSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/reporting/a;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Landroid/accounts/Account;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/gms/location/reporting/a;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/GmmSettings;->CREATOR:Lcom/google/android/gms/location/reporting/a;

    return-void
.end method

.method public constructor <init>(IJLandroid/accounts/Account;Z)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->a:I

    .line 53
    iput-wide p2, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->b:J

    .line 54
    iput-object p4, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->c:Landroid/accounts/Account;

    .line 55
    iput-boolean p5, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->d:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 60
    const-wide/high16 v2, -0x8000000000000000L

    move-object v0, p0

    move-object v4, p1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/reporting/GmmSettings;-><init>(IJLandroid/accounts/Account;Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->b:J

    return-wide v0
.end method

.method public final b()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->c:Landroid/accounts/Account;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->d:Z

    return v0
.end method

.method final d()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/google/android/gms/location/reporting/GmmSettings;->CREATOR:Lcom/google/android/gms/location/reporting/a;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 114
    instance-of v1, p1, Lcom/google/android/gms/location/reporting/GmmSettings;

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    check-cast p1, Lcom/google/android/gms/location/reporting/GmmSettings;

    .line 120
    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/location/reporting/GmmSettings;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->d:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/GmmSettings;->d:Z

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->a:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/GmmSettings;->a:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->c:Landroid/accounts/Account;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/location/reporting/GmmSettings;->c:Landroid/accounts/Account;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->c:Landroid/accounts/Account;

    iget-object v1, p1, Lcom/google/android/gms/location/reporting/GmmSettings;->c:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 129
    iget v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->a:I

    .line 130
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->b:J

    iget-wide v4, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->b:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 131
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->c:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->c:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 132
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->d:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    .line 133
    return v0

    :cond_1
    move v0, v1

    .line 131
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GmmSettings{mVersionCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValueReadMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->c:Landroid/accounts/Account;

    invoke-static {v1}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReportingSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/google/android/gms/location/reporting/GmmSettings;->CREATOR:Lcom/google/android/gms/location/reporting/a;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/reporting/a;->a(Lcom/google/android/gms/location/reporting/GmmSettings;Landroid/os/Parcel;I)V

    .line 100
    return-void
.end method
