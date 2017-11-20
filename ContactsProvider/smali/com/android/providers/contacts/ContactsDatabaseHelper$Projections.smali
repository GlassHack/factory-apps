.class public interface abstract Lcom/android/providers/contacts/ContactsDatabaseHelper$Projections;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Projections"
.end annotation


# static fields
.field public static final ID:[Ljava/lang/String;

.field public static final LITERAL_ONE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 711
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$Projections;->ID:[Ljava/lang/String;

    .line 712
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$Projections;->LITERAL_ONE:[Ljava/lang/String;

    return-void
.end method
