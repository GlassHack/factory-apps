.class public Lcom/google/android/gms/location/reporting/ReportingState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/reporting/g;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:I

.field private final h:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/location/reporting/g;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/ReportingState;->CREATOR:Lcom/google/android/gms/location/reporting/g;

    return-void
.end method

.method public constructor <init>(IIIZZZILjava/lang/Integer;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->a:I

    .line 72
    iput p2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->b:I

    .line 73
    iput p3, p0, Lcom/google/android/gms/location/reporting/ReportingState;->c:I

    .line 74
    iput-boolean p4, p0, Lcom/google/android/gms/location/reporting/ReportingState;->d:Z

    .line 75
    iput-boolean p5, p0, Lcom/google/android/gms/location/reporting/ReportingState;->e:Z

    .line 76
    iput-boolean p6, p0, Lcom/google/android/gms/location/reporting/ReportingState;->f:Z

    .line 77
    iput p7, p0, Lcom/google/android/gms/location/reporting/ReportingState;->g:I

    .line 78
    iput-object p8, p0, Lcom/google/android/gms/location/reporting/ReportingState;->h:Ljava/lang/Integer;

    .line 79
    return-void
.end method

.method public constructor <init>(IIZZZILjava/lang/Integer;)V
    .locals 9

    .prologue
    .line 88
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/location/reporting/ReportingState;-><init>(IIIZZZILjava/lang/Integer;)V

    .line 90
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->b:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/f;->a(I)I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->c:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/f;->a(I)I

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->d:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->e:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/google/android/gms/location/reporting/ReportingState;->CREATOR:Lcom/google/android/gms/location/reporting/g;

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->f:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 245
    instance-of v1, p1, Lcom/google/android/gms/location/reporting/ReportingState;

    if-nez v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    check-cast p1, Lcom/google/android/gms/location/reporting/ReportingState;

    .line 251
    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->b:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->c:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->c:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->d:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->d:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->e:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->e:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->f:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->f:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->g:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->g:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->h:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->h:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->g:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final g()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method final h()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 262
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->h:Ljava/lang/Integer;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReportingState{mReportingEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHistoryEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpectedOptInResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->h:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/android/gms/location/reporting/a/c;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 287
    sget-object v0, Lcom/google/android/gms/location/reporting/ReportingState;->CREATOR:Lcom/google/android/gms/location/reporting/g;

    invoke-static {p0, p1}, Lcom/google/android/gms/location/reporting/g;->a(Lcom/google/android/gms/location/reporting/ReportingState;Landroid/os/Parcel;)V

    .line 288
    return-void
.end method
