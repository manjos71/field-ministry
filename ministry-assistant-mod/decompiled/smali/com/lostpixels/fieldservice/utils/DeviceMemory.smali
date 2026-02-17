.class public abstract Lcom/lostpixels/fieldservice/utils/DeviceMemory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getInternalFreeSpace()F
    .locals 2

    .line 19
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v1, v0

    const/high16 v0, 0x49800000    # 1048576.0f

    div-float/2addr v1, v0

    return v1
.end method
